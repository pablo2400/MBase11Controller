#pragma once

#include <juce_audio_utils/juce_audio_utils.h>

namespace mbase11
{
enum class ParamKind
{
    continuous,
    toggle
};

struct ParameterSpec
{
    juce::String id;
    juce::String name;
    juce::String group;
    float minValue = 0.0f;
    float maxValue = 127.0f;
    float defaultValue = 0.0f;
    int midiCc = -1;
    ParamKind kind = ParamKind::continuous;
};

const std::vector<ParameterSpec>& getParameterSpecs();
juce::AudioProcessorValueTreeState::ParameterLayout createParameterLayout();
const ParameterSpec* findSpec(juce::StringRef id);
int normalisedToMidiValue(const ParameterSpec& spec, float plainValue);
}
