# MBase 11 Controller

JUCE-based VST3/AU/AUv3/Standalone instrument-style controller for the Jomox MBase 11 sound module.

The plugin exposes all main MBase 11 sound controls on one UI and sends MIDI parameter changes to the hardware. State is saved with the plugin session, and menu actions are reserved for patch/SysEx import/export.

## Status

This is an initial implementation scaffold:

- VST3, AU and standalone targets verified locally via JUCE/CMake.
- The plugin is classified as a silent instrument/synth so Ableton Live can load it in the MIDI track instrument slot.
- AUv3 is declared in the project formats, but a separate AUv3 artefact was not produced by the local Command Line Tools/Makefiles build. Expect to finish that path with full Xcode or a dedicated app-extension target.
- One-window editor for the main MBase 11 controls.
- MIDI CC output path for host MIDI out plus optional direct MIDI output device selection.
- Test trigger panel with a manual C1 button and optional BPM-synced C1 retrigger.
- Parameter/state persistence through `AudioProcessorValueTreeState`.
- SysEx menu placeholders and a documented MIDI mapping table.

## Build

Install CMake and Apple command line tools, then build:

```sh
cmake -S . -B build -G "Unix Makefiles"
cmake --build build --config Release
```

Use `-G Xcode` only when full Xcode is installed and selected with `xcode-select`.

The local verified build used:

```sh
cmake -S . -B build-make -G "Unix Makefiles"
cmake --build build-make --config Release
```

By default CMake downloads JUCE. To use a local JUCE install:

```sh
cmake -S . -B build -G Xcode -DMBASE11_FETCH_JUCE=OFF -DCMAKE_PREFIX_PATH=/path/to/JUCE/install
```

## Ableton Live Routing

Use the plugin as an instrument on a MIDI track, then route the track MIDI output to the MIDI port connected to the MBase 11. The standalone build can open a physical MIDI output directly from the top bar.

## MIDI Mapping

Parameters currently present in the UI:

- Volume
- Tune
- Pitch
- Decay
- Gate Time
- Harmonics
- Pulse
- Noise
- Metal Noise
- Attack
- EQ
- Compression
- LFO Sync
- LFO One Shot
- LFO Intensity
- LFO Rate

MIDI channel and direct MIDI output are global controller settings, not automatable sound parameters.

The CC table lives in `Source/MBase11Parameters.cpp`. LFO toggle parameters send `0` for off and `64` for on.

The test trigger sends MIDI note C1 (`36`) on the selected MIDI channel.
