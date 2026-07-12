#include "PluginProcessor.h"
#include "PluginEditor.h"

MBase11ControllerAudioProcessor::MBase11ControllerAudioProcessor()
    : AudioProcessor(BusesProperties()),
      parameters(*this, nullptr, "MBase11State", mbase11::createParameterLayout())
{
    for (const auto& spec : mbase11::getParameterSpecs())
        parameters.addParameterListener(spec.id, this);
}

MBase11ControllerAudioProcessor::~MBase11ControllerAudioProcessor()
{
    for (const auto& spec : mbase11::getParameterSpecs())
        parameters.removeParameterListener(spec.id, this);
}

void MBase11ControllerAudioProcessor::prepareToPlay(double sampleRate, int)
{
    currentSampleRate = sampleRate > 0.0 ? sampleRate : 44100.0;
    samplesUntilNextAutoTrigger = 0.0;
    pendingNoteOffCountdowns.clear();
}
void MBase11ControllerAudioProcessor::releaseResources() {}

bool MBase11ControllerAudioProcessor::isBusesLayoutSupported(const BusesLayout& layouts) const
{
    return layouts.getMainInputChannelSet().isDisabled()
        && layouts.getMainOutputChannelSet().isDisabled();
}

void MBase11ControllerAudioProcessor::processBlock(juce::AudioBuffer<float>& buffer, juce::MidiBuffer& midiMessages)
{
    const auto numSamples = buffer.getNumSamples();
    schedulePendingNoteOffs(numSamples);

    if (testNoteRequested.exchange(false))
        triggerTestNoteAt(0);

    if (resetAutoTriggerRequested.exchange(false))
        samplesUntilNextAutoTrigger = 0.0;

    if (autoTriggerEnabled.load())
    {
        const auto bpm = juce::jlimit(20.0f, 300.0f, autoTriggerBpm.load());
        const auto intervalSamples = currentSampleRate * 60.0 / (double) bpm;

        while (samplesUntilNextAutoTrigger < (double) numSamples)
        {
            triggerTestNoteAt((int) samplesUntilNextAutoTrigger);
            samplesUntilNextAutoTrigger += intervalSamples;
        }

        samplesUntilNextAutoTrigger -= (double) numSamples;
    }
    else
    {
        samplesUntilNextAutoTrigger = 0.0;
    }

    midiRouter.drainTo(midiMessages);
}

juce::AudioProcessorEditor* MBase11ControllerAudioProcessor::createEditor()
{
    return new MBase11ControllerAudioProcessorEditor(*this);
}

void MBase11ControllerAudioProcessor::getStateInformation(juce::MemoryBlock& destData)
{
    auto state = parameters.copyState();
    state.setProperty("midiChannel", getMidiChannel(), nullptr);
    state.setProperty("directMidiOutput", midiRouter.getDirectOutputIdentifier(), nullptr);
    state.setProperty("autoTriggerEnabled", isAutoTriggerEnabled(), nullptr);
    state.setProperty("autoTriggerBpm", getAutoTriggerBpm(), nullptr);

    if (auto xml = state.createXml())
        copyXmlToBinary(*xml, destData);
}

void MBase11ControllerAudioProcessor::setStateInformation(const void* data, int sizeInBytes)
{
    if (auto xml = getXmlFromBinary(data, sizeInBytes))
    {
        auto state = juce::ValueTree::fromXml(*xml);
        if (state.isValid())
        {
            setMidiChannel((int) state.getProperty("midiChannel", 1));
            midiRouter.setDirectOutput(state.getProperty("directMidiOutput").toString());
            setAutoTriggerEnabled((bool) state.getProperty("autoTriggerEnabled", false));
            setAutoTriggerBpm((float) state.getProperty("autoTriggerBpm", 120.0f));
            parameters.replaceState(state);
        }
    }
}

int MBase11ControllerAudioProcessor::getMidiChannel() const
{
    return midiChannel.load();
}

void MBase11ControllerAudioProcessor::setMidiChannel(int newChannel)
{
    midiChannel.store(juce::jlimit(1, 16, newChannel));
}

void MBase11ControllerAudioProcessor::sendCurrentPatchSnapshot()
{
    for (const auto& spec : mbase11::getParameterSpecs())
        if (auto* parameter = parameters.getRawParameterValue(spec.id))
            midiRouter.sendParameter(spec, getMidiChannel(), parameter->load());
}

void MBase11ControllerAudioProcessor::triggerTestNote()
{
    testNoteRequested.store(true);
}

bool MBase11ControllerAudioProcessor::isAutoTriggerEnabled() const
{
    return autoTriggerEnabled.load();
}

void MBase11ControllerAudioProcessor::setAutoTriggerEnabled(bool shouldBeEnabled)
{
    autoTriggerEnabled.store(shouldBeEnabled);
    if (shouldBeEnabled)
        resetAutoTriggerRequested.store(true);
}

float MBase11ControllerAudioProcessor::getAutoTriggerBpm() const
{
    return autoTriggerBpm.load();
}

void MBase11ControllerAudioProcessor::setAutoTriggerBpm(float newBpm)
{
    autoTriggerBpm.store(juce::jlimit(20.0f, 300.0f, newBpm));
    resetAutoTriggerRequested.store(true);
}

void MBase11ControllerAudioProcessor::parameterChanged(const juce::String& parameterID, float newValue)
{
    if (const auto* spec = mbase11::findSpec(parameterID))
        midiRouter.sendParameter(*spec, getMidiChannel(), newValue);
}

void MBase11ControllerAudioProcessor::triggerTestNoteAt(int sampleOffset)
{
    const auto channel = juce::jlimit(1, 16, getMidiChannel());
    constexpr int c1NoteNumber = 36;
    constexpr juce::uint8 velocity = 100;

    midiRouter.sendMessage(juce::MidiMessage::noteOn(channel, c1NoteNumber, velocity), sampleOffset);

    const auto noteLengthSamples = juce::roundToInt(currentSampleRate * 0.08);
    pendingNoteOffCountdowns.add(sampleOffset + noteLengthSamples);
}

void MBase11ControllerAudioProcessor::schedulePendingNoteOffs(int numSamples)
{
    const auto channel = juce::jlimit(1, 16, getMidiChannel());
    constexpr int c1NoteNumber = 36;

    for (int i = pendingNoteOffCountdowns.size(); --i >= 0;)
    {
        auto remaining = pendingNoteOffCountdowns.getReference(i);

        if (remaining < numSamples)
        {
            midiRouter.sendMessage(juce::MidiMessage::noteOff(channel, c1NoteNumber), remaining);
            pendingNoteOffCountdowns.remove(i);
        }
        else
        {
            remaining -= numSamples;
        }
    }
}

juce::AudioProcessor* JUCE_CALLTYPE createPluginFilter()
{
    return new MBase11ControllerAudioProcessor();
}
