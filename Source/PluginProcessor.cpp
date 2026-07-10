#include "PluginProcessor.h"
#include "PluginEditor.h"

MBase11ControllerAudioProcessor::MBase11ControllerAudioProcessor()
    : AudioProcessor(BusesProperties()
          .withOutput("Output", juce::AudioChannelSet::stereo(), true)),
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

void MBase11ControllerAudioProcessor::prepareToPlay(double, int) {}
void MBase11ControllerAudioProcessor::releaseResources() {}

bool MBase11ControllerAudioProcessor::isBusesLayoutSupported(const BusesLayout& layouts) const
{
    const auto output = layouts.getMainOutputChannelSet();
    return output == juce::AudioChannelSet::stereo() || output == juce::AudioChannelSet::mono();
}

void MBase11ControllerAudioProcessor::processBlock(juce::AudioBuffer<float>& buffer, juce::MidiBuffer& midiMessages)
{
    buffer.clear();
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

void MBase11ControllerAudioProcessor::parameterChanged(const juce::String& parameterID, float newValue)
{
    if (const auto* spec = mbase11::findSpec(parameterID))
        midiRouter.sendParameter(*spec, getMidiChannel(), newValue);
}

juce::AudioProcessor* JUCE_CALLTYPE createPluginFilter()
{
    return new MBase11ControllerAudioProcessor();
}
