#pragma once

#include <juce_audio_utils/juce_audio_utils.h>
#include "PluginProcessor.h"

class MBase11ControllerAudioProcessorEditor final
    : public juce::AudioProcessorEditor,
      private juce::Button::Listener,
      private juce::ComboBox::Listener
{
public:
    explicit MBase11ControllerAudioProcessorEditor(MBase11ControllerAudioProcessor&);
    ~MBase11ControllerAudioProcessorEditor() override;

    void paint(juce::Graphics&) override;
    void resized() override;

private:
    struct Control
    {
        juce::Label label;
        juce::Slider slider;
        juce::ToggleButton toggle;
        std::unique_ptr<juce::AudioProcessorValueTreeState::SliderAttachment> sliderAttachment;
        std::unique_ptr<juce::AudioProcessorValueTreeState::ButtonAttachment> buttonAttachment;
        const mbase11::ParameterSpec* spec = nullptr;
    };

    void buttonClicked(juce::Button*) override;
    void comboBoxChanged(juce::ComboBox*) override;
    void rebuildMidiOutputMenu();
    void layoutGroup(const juce::String& groupName, juce::Rectangle<int> area);

    MBase11ControllerAudioProcessor& processor;
    juce::OwnedArray<Control> controls;
    juce::TextButton snapshotButton { "Send Snapshot" };
    juce::TextButton sysexButton { "SysEx" };
    juce::TextButton testNoteButton { "Test C1" };
    juce::ToggleButton autoTriggerToggle { "Auto" };
    juce::Slider bpmSlider;
    juce::ComboBox channelBox;
    juce::ComboBox midiOutputBox;
    juce::Label titleLabel;
    juce::Label channelLabel;
    juce::Label outputLabel;
    juce::Label bpmLabel;

    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR(MBase11ControllerAudioProcessorEditor)
};
