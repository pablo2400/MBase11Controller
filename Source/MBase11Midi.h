#pragma once

#include <juce_audio_utils/juce_audio_utils.h>
#include "MBase11Parameters.h"

namespace mbase11
{
struct PendingMidiMessage
{
    juce::MidiMessage message;
    int sampleOffset = 0;
};

class MidiRouter
{
public:
    void setDirectOutput(const juce::String& deviceIdentifier);
    juce::String getDirectOutputIdentifier() const;
    juce::StringArray getAvailableOutputNames() const;
    juce::Array<juce::MidiDeviceInfo> getAvailableOutputs() const;

    void sendParameter(const ParameterSpec& spec, int midiChannel, float plainValue);
    void drainTo(juce::MidiBuffer& output);

private:
    juce::CriticalSection lock;
    std::unique_ptr<juce::MidiOutput> directOutput;
    juce::String directOutputIdentifier;
    juce::Array<PendingMidiMessage> pending;
};
}
