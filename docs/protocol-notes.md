# MBase 11 Protocol Notes

Source material used during development:

- Jomox MBase 11 operating manual

The controller exposes the following user-facing parameter names:

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

The module receives standard MIDI Program Change messages. The Max for Live control exposes `0..109`, matching the 10 user presets (`Pr0..Pr9`) followed by the 100 flash presets (`r00..r99`). Program Change is sent on the selected MIDI channel and is not a CC message.

The Program Change parameter remains continuous and modulatable while its UI formats the value as `Pr0..Pr9` or `r00..r99`. Max for Live parameter order and control-surface banks follow the two visible rows, with Program Change and MIDI Channel in a separate setup bank.

The SysEx workflow uses these actions:

- Receive SysEx Patch
- Transmit SysEx Patch
- To transmit a patch from the MBase 11, press Up and Play together, navigate to `Sys Dump`, then press the encoder.

Confirmed CC mapping:

| Parameter | CC | Value range |
| --- | ---: | --- |
| Tune | 100 | 0..127 |
| Pitch | 101 | 0..127 |
| Decay | 102 | 0..127 |
| Harmonics | 103 | 0..127 |
| Pulse | 104 | 0..127 |
| Noise | 105 | 0..127 |
| Attack | 106 | 0..127 |
| EQ | 107 | 0..127 |
| Compression | 113 | 0..127 |
| Gate Time | 114 | 0..127 |
| Metal Noise | 115 | 0..127 |
| Volume | 117 | 0..127 |
| LFO Sync | 120 | 0/64 |
| LFO Intensity | 121 | 0..127 |
| LFO Rate | 122 | 0..127 |
| LFO One Shot | 123 | 0/64 |

Open item: verify the SysEx dump format from the manual. The implementation table is isolated in `Source/MBase11Parameters.cpp`.
