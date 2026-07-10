#include "MBase11Midi.h"

namespace mbase11
{
void MidiRouter::setDirectOutput(const juce::String& deviceIdentifier)
{
    const juce::ScopedLock sl(lock);
    directOutput.reset();
    directOutputIdentifier = {};

    if (deviceIdentifier.isEmpty())
        return;

    if (auto output = juce::MidiOutput::openDevice(deviceIdentifier))
    {
        directOutputIdentifier = deviceIdentifier;
        directOutput = std::move(output);
    }
}

juce::String MidiRouter::getDirectOutputIdentifier() const
{
    return directOutputIdentifier;
}

juce::Array<juce::MidiDeviceInfo> MidiRouter::getAvailableOutputs() const
{
    return juce::MidiOutput::getAvailableDevices();
}

juce::StringArray MidiRouter::getAvailableOutputNames() const
{
    juce::StringArray names;
    for (const auto& info : juce::MidiOutput::getAvailableDevices())
        names.add(info.name);
    return names;
}

void MidiRouter::sendParameter(const ParameterSpec& spec, int midiChannel, float plainValue)
{
    if (spec.midiCc < 0)
        return;

    const auto channel = juce::jlimit(1, 16, midiChannel);
    const auto value = normalisedToMidiValue(spec, plainValue);
    auto message = juce::MidiMessage::controllerEvent(channel, spec.midiCc, value);

    const juce::ScopedLock sl(lock);

    if (directOutput != nullptr)
        directOutput->sendMessageNow(message);

    pending.add({ message, 0 });
}

void MidiRouter::drainTo(juce::MidiBuffer& output)
{
    const juce::ScopedLock sl(lock);

    for (const auto& item : pending)
        output.addEvent(item.message, item.sampleOffset);

    pending.clearQuick();
}
}
