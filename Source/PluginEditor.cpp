#include "PluginEditor.h"

namespace
{
juce::Colour background() { return juce::Colour::fromRGB(24, 26, 28); }
juce::Colour panel() { return juce::Colour::fromRGB(34, 37, 40); }
juce::Colour accent() { return juce::Colour::fromRGB(230, 92, 54); }
juce::Colour text() { return juce::Colour::fromRGB(235, 235, 230); }
}

MBase11ControllerAudioProcessorEditor::MBase11ControllerAudioProcessorEditor(MBase11ControllerAudioProcessor& p)
    : AudioProcessorEditor(&p), processor(p)
{
    titleLabel.setText("Jomox MBase 11 Controller", juce::dontSendNotification);
    titleLabel.setColour(juce::Label::textColourId, text());
    titleLabel.setFont(juce::FontOptions(24.0f, juce::Font::bold));
    addAndMakeVisible(titleLabel);

    channelLabel.setText("MIDI Channel", juce::dontSendNotification);
    outputLabel.setText("Direct MIDI Output", juce::dontSendNotification);
    for (auto* label : { &channelLabel, &outputLabel })
    {
        label->setColour(juce::Label::textColourId, text().withAlpha(0.76f));
        addAndMakeVisible(*label);
    }

    for (int channel = 1; channel <= 16; ++channel)
        channelBox.addItem(juce::String(channel), channel);
    channelBox.setSelectedId(processor.getMidiChannel(), juce::dontSendNotification);
    channelBox.addListener(this);
    addAndMakeVisible(channelBox);

    rebuildMidiOutputMenu();
    midiOutputBox.addListener(this);
    addAndMakeVisible(midiOutputBox);

    snapshotButton.addListener(this);
    sysexButton.addListener(this);
    addAndMakeVisible(snapshotButton);
    addAndMakeVisible(sysexButton);

    for (const auto& spec : mbase11::getParameterSpecs())
    {
        auto* control = controls.add(new Control());
        control->spec = &spec;
        control->label.setText(spec.name, juce::dontSendNotification);
        control->label.setColour(juce::Label::textColourId, text());
        control->label.setJustificationType(juce::Justification::centred);
        addAndMakeVisible(control->label);

        if (spec.kind == mbase11::ParamKind::toggle)
        {
            control->toggle.setButtonText({});
            control->toggle.setColour(juce::ToggleButton::tickColourId, accent());
            control->buttonAttachment = std::make_unique<juce::AudioProcessorValueTreeState::ButtonAttachment>(
                processor.getState(), spec.id, control->toggle);
            addAndMakeVisible(control->toggle);
        }
        else
        {
            control->slider.setSliderStyle(juce::Slider::RotaryHorizontalVerticalDrag);
            control->slider.setTextBoxStyle(juce::Slider::TextBoxBelow, false, 62, 22);
            control->slider.setColour(juce::Slider::rotarySliderFillColourId, accent());
            control->slider.setColour(juce::Slider::rotarySliderOutlineColourId, juce::Colour::fromRGB(70, 74, 78));
            control->slider.setColour(juce::Slider::textBoxTextColourId, text());
            control->sliderAttachment = std::make_unique<juce::AudioProcessorValueTreeState::SliderAttachment>(
                processor.getState(), spec.id, control->slider);
            addAndMakeVisible(control->slider);
        }
    }

    setSize(980, 620);
}

MBase11ControllerAudioProcessorEditor::~MBase11ControllerAudioProcessorEditor()
{
    snapshotButton.removeListener(this);
    sysexButton.removeListener(this);
    channelBox.removeListener(this);
    midiOutputBox.removeListener(this);
}

void MBase11ControllerAudioProcessorEditor::paint(juce::Graphics& g)
{
    g.fillAll(background());
    g.setColour(panel());
    g.fillRoundedRectangle(getLocalBounds().reduced(18).toFloat(), 8.0f);

    g.setColour(accent());
    g.fillRect(24, 78, getWidth() - 48, 2);
}

void MBase11ControllerAudioProcessorEditor::resized()
{
    auto area = getLocalBounds().reduced(28);
    auto top = area.removeFromTop(42);
    titleLabel.setBounds(top.removeFromLeft(360));

    outputLabel.setBounds(top.removeFromLeft(130));
    midiOutputBox.setBounds(top.removeFromLeft(230).reduced(4, 2));
    channelLabel.setBounds(top.removeFromLeft(100));
    channelBox.setBounds(top.removeFromLeft(76).reduced(4, 2));
    snapshotButton.setBounds(top.removeFromLeft(128).reduced(4, 2));
    sysexButton.setBounds(top.removeFromLeft(72).reduced(4, 2));

    area.removeFromTop(28);
    auto row1 = area.removeFromTop(220);
    layoutGroup("Pitch", row1.removeFromLeft(220));
    layoutGroup("Envelope", row1.removeFromLeft(330));
    layoutGroup("Level", row1.removeFromLeft(150));
    layoutGroup("Output", row1.removeFromLeft(220));

    area.removeFromTop(18);
    auto row2 = area.removeFromTop(240);
    layoutGroup("Tone", row2.removeFromLeft(560));
    layoutGroup("LFO", row2.removeFromLeft(360));
}

void MBase11ControllerAudioProcessorEditor::buttonClicked(juce::Button* button)
{
    if (button == &snapshotButton)
    {
        processor.sendCurrentPatchSnapshot();
        return;
    }

    if (button == &sysexButton)
    {
        juce::PopupMenu menu;
        menu.addItem("Import SysEx Patch...", [] {});
        menu.addItem("Export SysEx Patch...", [] {});
        menu.addSeparator();
        menu.addItem("Request Patch From MBase 11", [] {});
        menu.showMenuAsync({});
    }
}

void MBase11ControllerAudioProcessorEditor::comboBoxChanged(juce::ComboBox* box)
{
    if (box == &channelBox)
    {
        processor.setMidiChannel(channelBox.getSelectedId());
        return;
    }

    if (box == &midiOutputBox)
    {
        const auto devices = processor.getMidiRouter().getAvailableOutputs();
        const auto selected = midiOutputBox.getSelectedId();

        if (selected <= 1)
        {
            processor.getMidiRouter().setDirectOutput({});
            return;
        }

        const auto deviceIndex = selected - 2;
        processor.getMidiRouter().setDirectOutput(
            juce::isPositiveAndBelow(deviceIndex, (int) devices.size()) ? devices[(size_t) deviceIndex].identifier
                                                                        : juce::String());
    }
}

void MBase11ControllerAudioProcessorEditor::rebuildMidiOutputMenu()
{
    midiOutputBox.clear(juce::dontSendNotification);
    midiOutputBox.addItem("Host MIDI Out", 1);

    int id = 2;
    const auto current = processor.getMidiRouter().getDirectOutputIdentifier();
    for (const auto& device : processor.getMidiRouter().getAvailableOutputs())
    {
        midiOutputBox.addItem(device.name, id);
        if (device.identifier == current)
            midiOutputBox.setSelectedId(id, juce::dontSendNotification);
        ++id;
    }

    if (midiOutputBox.getSelectedId() == 0)
        midiOutputBox.setSelectedId(1, juce::dontSendNotification);
}

void MBase11ControllerAudioProcessorEditor::layoutGroup(const juce::String& groupName, juce::Rectangle<int> area)
{
    area = area.reduced(8);

    juce::Array<Control*> groupControls;
    for (auto* control : controls)
        if (control->spec->group == groupName)
            groupControls.add(control);

    if (groupControls.isEmpty())
        return;

    const int columns = juce::jlimit(1, 4, groupControls.size());
    const int cellW = area.getWidth() / columns;
    const int cellH = 108;

    for (int i = 0; i < groupControls.size(); ++i)
    {
        auto* control = groupControls[i];
        auto cell = juce::Rectangle<int>(
            area.getX() + (i % columns) * cellW,
            area.getY() + (i / columns) * cellH,
            cellW,
            cellH).reduced(6);

        control->label.setBounds(cell.removeFromTop(24));

        if (control->spec->kind == mbase11::ParamKind::toggle)
            control->toggle.setBounds(cell.withSizeKeepingCentre(42, 42));
        else
            control->slider.setBounds(cell);
    }
}
