# MBase 11 Protocol Notes

Source material available locally:

- `[local path]`
- `[local path]`

The Windows editor binary exposes the user-facing parameter names:

- MIDI Channel
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
- LFO Sync
- LFO One Shot
- LFO Intensity
- LFO Rate

The binary also contains these SysEx workflow strings:

- Receive SysEx Patch
- Transmit SysEx Patch
- To transmit a patch from the MBase 11, press Up and Play together, navigate to `Sys Dump`, then press the encoder.

Open item: verify the exact CC numbers and SysEx dump format from the manual. The implementation table is isolated in `Source/MBase11Parameters.cpp`.

