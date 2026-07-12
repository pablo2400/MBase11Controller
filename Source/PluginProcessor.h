#pragma once

#include <juce_audio_utils/juce_audio_utils.h>
#include "MBase11Midi.h"

class MBase11ControllerAudioProcessor final
    : public juce::AudioProcessor,
      private juce::AudioProcessorValueTreeState::Listener
{
public:
    MBase11ControllerAudioProcessor();
    ~MBase11ControllerAudioProcessor() override;

    void prepareToPlay(double sampleRate, int samplesPerBlock) override;
    void releaseResources() override;
    bool isBusesLayoutSupported(const BusesLayout& layouts) const override;
    void processBlock(juce::AudioBuffer<float>& buffer, juce::MidiBuffer& midiMessages) override;

    juce::AudioProcessorEditor* createEditor() override;
    bool hasEditor() const override { return true; }

    const juce::String getName() const override { return "MBase 11 Controller"; }
    bool acceptsMidi() const override { return true; }
    bool producesMidi() const override { return true; }
    bool isMidiEffect() const override { return true; }
    double getTailLengthSeconds() const override { return 0.0; }

    int getNumPrograms() override { return 1; }
    int getCurrentProgram() override { return 0; }
    void setCurrentProgram(int) override {}
    const juce::String getProgramName(int) override { return {}; }
    void changeProgramName(int, const juce::String&) override {}

    void getStateInformation(juce::MemoryBlock& destData) override;
    void setStateInformation(const void* data, int sizeInBytes) override;

    juce::AudioProcessorValueTreeState& getState() { return parameters; }
    mbase11::MidiRouter& getMidiRouter() { return midiRouter; }

    int getMidiChannel() const;
    void setMidiChannel(int newChannel);
    void sendCurrentPatchSnapshot();
    void triggerTestNote();
    bool isAutoTriggerEnabled() const;
    void setAutoTriggerEnabled(bool shouldBeEnabled);
    float getAutoTriggerBpm() const;
    void setAutoTriggerBpm(float newBpm);

private:
    void parameterChanged(const juce::String& parameterID, float newValue) override;
    void triggerTestNoteAt(int sampleOffset);
    void schedulePendingNoteOffs(int numSamples);

    juce::AudioProcessorValueTreeState parameters;
    mbase11::MidiRouter midiRouter;
    std::atomic<int> midiChannel { 1 };
    std::atomic<bool> testNoteRequested { false };
    std::atomic<bool> autoTriggerEnabled { false };
    std::atomic<bool> resetAutoTriggerRequested { false };
    std::atomic<float> autoTriggerBpm { 120.0f };
    double currentSampleRate = 44100.0;
    double samplesUntilNextAutoTrigger = 0.0;
    juce::Array<int> pendingNoteOffCountdowns;

    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR(MBase11ControllerAudioProcessor)
};
