#include "MBase11Parameters.h"

namespace mbase11
{
const std::vector<ParameterSpec>& getParameterSpecs()
{
    // TODO: Verify exact CC numbers against the Jomox MBase 11 manual.
    // The UI and persistence are final enough to use; the protocol table is isolated here.
    static const std::vector<ParameterSpec> specs {
        { "volume",       "Volume",       "Level",     0.0f, 127.0f, 100.0f,  7, ParamKind::continuous },
        { "tune",         "Tune",         "Pitch",     0.0f, 127.0f,  64.0f, 20, ParamKind::continuous },
        { "pitch",        "Pitch",        "Pitch",     0.0f, 127.0f,  64.0f, 21, ParamKind::continuous },
        { "decay",        "Decay",        "Envelope",  0.0f, 127.0f,  80.0f, 22, ParamKind::continuous },
        { "gateTime",     "Gate Time",    "Envelope",  0.0f, 127.0f,  20.0f, 23, ParamKind::continuous },
        { "harmonics",    "Harmonics",    "Tone",      0.0f, 127.0f,  30.0f, 24, ParamKind::continuous },
        { "pulse",        "Pulse",        "Tone",      0.0f, 127.0f,  20.0f, 25, ParamKind::continuous },
        { "noise",        "Noise",        "Tone",      0.0f, 127.0f,   0.0f, 26, ParamKind::continuous },
        { "metalNoise",   "Metal Noise",  "Tone",      0.0f, 127.0f,   0.0f, 27, ParamKind::continuous },
        { "attack",       "Attack",       "Envelope",  0.0f, 127.0f,   0.0f, 28, ParamKind::continuous },
        { "lfoSync",      "LFO Sync",     "LFO",       0.0f,   1.0f,   0.0f, 29, ParamKind::toggle },
        { "lfoOneShot",   "LFO One Shot", "LFO",       0.0f,   1.0f,   0.0f, 30, ParamKind::toggle },
        { "lfoIntensity", "LFO Intensity", "LFO",      0.0f, 127.0f,   0.0f, 31, ParamKind::continuous },
        { "lfoRate",      "LFO Rate",     "LFO",       0.0f, 127.0f,  64.0f, 32, ParamKind::continuous },
    };

    return specs;
}

juce::AudioProcessorValueTreeState::ParameterLayout createParameterLayout()
{
    std::vector<std::unique_ptr<juce::RangedAudioParameter>> params;

    for (const auto& spec : getParameterSpecs())
    {
        if (spec.kind == ParamKind::toggle)
        {
            params.push_back(std::make_unique<juce::AudioParameterBool>(
                juce::ParameterID { spec.id, 1 }, spec.name, spec.defaultValue > 0.5f));
        }
        else
        {
            params.push_back(std::make_unique<juce::AudioParameterFloat>(
                juce::ParameterID { spec.id, 1 },
                spec.name,
                juce::NormalisableRange<float> { spec.minValue, spec.maxValue, 1.0f },
                spec.defaultValue,
                juce::AudioParameterFloatAttributes()
                    .withStringFromValueFunction([](float value, int) { return juce::String(juce::roundToInt(value)); })
                    .withValueFromStringFunction([](const juce::String& text) { return text.getFloatValue(); })));
        }
    }

    return { params.begin(), params.end() };
}

const ParameterSpec* findSpec(juce::StringRef id)
{
    for (const auto& spec : getParameterSpecs())
        if (spec.id == id)
            return &spec;

    return nullptr;
}

int normalisedToMidiValue(const ParameterSpec& spec, float plainValue)
{
    if (spec.kind == ParamKind::toggle)
        return plainValue >= 0.5f ? 127 : 0;

    return juce::jlimit(0, 127, juce::roundToInt(plainValue));
}
}

