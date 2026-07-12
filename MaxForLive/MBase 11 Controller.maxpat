{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 0,
      "revision": 10,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      100,
      100,
      940,
      500
    ],
    "bglocked": 0,
    "openinpresentation": 1,
    "default_fontsize": 12,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 1,
    "gridsize": [
      15,
      15
    ],
    "toolbarvisible": 1,
    "enablehscroll": 0,
    "enablevscroll": 0,
    "devicewidth": 930,
    "boxes": [
      {
        "box": {
          "id": "midiin",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            520,
            48,
            22
          ],
          "text": "midiin"
        }
      },
      {
        "box": {
          "id": "midiout",
          "maxclass": "newobj",
          "patching_rect": [
            90,
            520,
            54,
            22
          ],
          "text": "midiout"
        }
      },
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "patching_rect": [
            20,
            14,
            350,
            24
          ],
          "text": "MBASE 11  |  MIDI CC CONTROLLER",
          "presentation": 1,
          "presentation_rect": [
            20,
            14,
            350,
            24
          ],
          "fontface": 1,
          "fontsize": 16
        }
      },
      {
        "box": {
          "id": "channelLabel",
          "maxclass": "comment",
          "patching_rect": [
            760,
            15,
            95,
            20
          ],
          "text": "MIDI CHANNEL",
          "presentation": 1,
          "presentation_rect": [
            760,
            15,
            95,
            20
          ]
        }
      },
      {
        "box": {
          "id": "channel",
          "maxclass": "live.numbox",
          "patching_rect": [
            855,
            12,
            54,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            855,
            12,
            54,
            24
          ],
          "minimum": 1,
          "maximum": 16,
          "parameter_enable": 1,
          "varname": "midi_channel",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "MIDI Channel",
              "parameter_shortname": "Channel",
              "parameter_mmin": 1,
              "parameter_mmax": 16,
              "parameter_initial": [
                11
              ],
              "parameter_type": 1
            }
          }
        }
      },
      {
        "box": {
          "id": "loadchan",
          "maxclass": "newobj",
          "patching_rect": [
            760,
            520,
            75,
            22
          ],
          "text": "loadmess 11"
        }
      },
      {
        "box": {
          "id": "grp0",
          "maxclass": "comment",
          "patching_rect": [
            20,
            55,
            130,
            20
          ],
          "text": "PITCH",
          "presentation": 1,
          "presentation_rect": [
            20,
            55,
            130,
            20
          ],
          "fontface": 1
        }
      },
      {
        "box": {
          "id": "grp1",
          "maxclass": "comment",
          "patching_rect": [
            205,
            55,
            130,
            20
          ],
          "text": "ENVELOPE",
          "presentation": 1,
          "presentation_rect": [
            205,
            55,
            130,
            20
          ],
          "fontface": 1
        }
      },
      {
        "box": {
          "id": "grp2",
          "maxclass": "comment",
          "patching_rect": [
            475,
            55,
            130,
            20
          ],
          "text": "LEVEL",
          "presentation": 1,
          "presentation_rect": [
            475,
            55,
            130,
            20
          ],
          "fontface": 1
        }
      },
      {
        "box": {
          "id": "grp3",
          "maxclass": "comment",
          "patching_rect": [
            565,
            55,
            130,
            20
          ],
          "text": "OUTPUT",
          "presentation": 1,
          "presentation_rect": [
            565,
            55,
            130,
            20
          ],
          "fontface": 1
        }
      },
      {
        "box": {
          "id": "grp4",
          "maxclass": "comment",
          "patching_rect": [
            20,
            275,
            130,
            20
          ],
          "text": "TONE",
          "presentation": 1,
          "presentation_rect": [
            20,
            275,
            130,
            20
          ],
          "fontface": 1
        }
      },
      {
        "box": {
          "id": "grp5",
          "maxclass": "comment",
          "patching_rect": [
            475,
            275,
            130,
            20
          ],
          "text": "LFO",
          "presentation": 1,
          "presentation_rect": [
            475,
            275,
            130,
            20
          ],
          "fontface": 1
        }
      },
      {
        "box": {
          "id": "label0",
          "maxclass": "comment",
          "patching_rect": [
            475,
            145,
            80,
            30
          ],
          "text": "Volume",
          "presentation": 1,
          "presentation_rect": [
            475,
            145,
            80,
            30
          ]
        }
      },
      {
        "box": {
          "id": "param0",
          "maxclass": "live.dial",
          "patching_rect": [
            475,
            85,
            52,
            52
          ],
          "presentation": 1,
          "presentation_rect": [
            475,
            85,
            52,
            52
          ],
          "parameter_enable": 1,
          "varname": "volume",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Volume",
              "parameter_shortname": "Volume",
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_initial": [
                100
              ],
              "parameter_type": 1
            }
          }
        }
      },
      {
        "box": {
          "id": "cc0",
          "maxclass": "newobj",
          "patching_rect": [
            475,
            230,
            82,
            22
          ],
          "text": "ctlout 117 11"
        }
      },
      {
        "box": {
          "id": "label1",
          "maxclass": "comment",
          "patching_rect": [
            20,
            145,
            80,
            30
          ],
          "text": "Tune",
          "presentation": 1,
          "presentation_rect": [
            20,
            145,
            80,
            30
          ]
        }
      },
      {
        "box": {
          "id": "param1",
          "maxclass": "live.dial",
          "patching_rect": [
            20,
            85,
            52,
            52
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            85,
            52,
            52
          ],
          "parameter_enable": 1,
          "varname": "tune",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Tune",
              "parameter_shortname": "Tune",
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_initial": [
                64
              ],
              "parameter_type": 1
            }
          }
        }
      },
      {
        "box": {
          "id": "cc1",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            230,
            82,
            22
          ],
          "text": "ctlout 100 11"
        }
      },
      {
        "box": {
          "id": "label2",
          "maxclass": "comment",
          "patching_rect": [
            105,
            145,
            80,
            30
          ],
          "text": "Pitch",
          "presentation": 1,
          "presentation_rect": [
            105,
            145,
            80,
            30
          ]
        }
      },
      {
        "box": {
          "id": "param2",
          "maxclass": "live.dial",
          "patching_rect": [
            105,
            85,
            52,
            52
          ],
          "presentation": 1,
          "presentation_rect": [
            105,
            85,
            52,
            52
          ],
          "parameter_enable": 1,
          "varname": "pitch",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Pitch",
              "parameter_shortname": "Pitch",
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_initial": [
                64
              ],
              "parameter_type": 1
            }
          }
        }
      },
      {
        "box": {
          "id": "cc2",
          "maxclass": "newobj",
          "patching_rect": [
            105,
            230,
            82,
            22
          ],
          "text": "ctlout 101 11"
        }
      },
      {
        "box": {
          "id": "label3",
          "maxclass": "comment",
          "patching_rect": [
            205,
            145,
            80,
            30
          ],
          "text": "Decay",
          "presentation": 1,
          "presentation_rect": [
            205,
            145,
            80,
            30
          ]
        }
      },
      {
        "box": {
          "id": "param3",
          "maxclass": "live.dial",
          "patching_rect": [
            205,
            85,
            52,
            52
          ],
          "presentation": 1,
          "presentation_rect": [
            205,
            85,
            52,
            52
          ],
          "parameter_enable": 1,
          "varname": "decay",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Decay",
              "parameter_shortname": "Decay",
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_initial": [
                80
              ],
              "parameter_type": 1
            }
          }
        }
      },
      {
        "box": {
          "id": "cc3",
          "maxclass": "newobj",
          "patching_rect": [
            205,
            230,
            82,
            22
          ],
          "text": "ctlout 102 11"
        }
      },
      {
        "box": {
          "id": "label4",
          "maxclass": "comment",
          "patching_rect": [
            290,
            145,
            80,
            30
          ],
          "text": "Gate Time",
          "presentation": 1,
          "presentation_rect": [
            290,
            145,
            80,
            30
          ]
        }
      },
      {
        "box": {
          "id": "param4",
          "maxclass": "live.dial",
          "patching_rect": [
            290,
            85,
            52,
            52
          ],
          "presentation": 1,
          "presentation_rect": [
            290,
            85,
            52,
            52
          ],
          "parameter_enable": 1,
          "varname": "gate_time",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Gate Time",
              "parameter_shortname": "Gate Time",
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_initial": [
                20
              ],
              "parameter_type": 1
            }
          }
        }
      },
      {
        "box": {
          "id": "cc4",
          "maxclass": "newobj",
          "patching_rect": [
            290,
            230,
            82,
            22
          ],
          "text": "ctlout 114 11"
        }
      },
      {
        "box": {
          "id": "label5",
          "maxclass": "comment",
          "patching_rect": [
            375,
            145,
            80,
            30
          ],
          "text": "Attack",
          "presentation": 1,
          "presentation_rect": [
            375,
            145,
            80,
            30
          ]
        }
      },
      {
        "box": {
          "id": "param5",
          "maxclass": "live.dial",
          "patching_rect": [
            375,
            85,
            52,
            52
          ],
          "presentation": 1,
          "presentation_rect": [
            375,
            85,
            52,
            52
          ],
          "parameter_enable": 1,
          "varname": "attack",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Attack",
              "parameter_shortname": "Attack",
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_initial": [
                0
              ],
              "parameter_type": 1
            }
          }
        }
      },
      {
        "box": {
          "id": "cc5",
          "maxclass": "newobj",
          "patching_rect": [
            375,
            230,
            82,
            22
          ],
          "text": "ctlout 106 11"
        }
      },
      {
        "box": {
          "id": "label6",
          "maxclass": "comment",
          "patching_rect": [
            20,
            365,
            80,
            30
          ],
          "text": "Harmonics",
          "presentation": 1,
          "presentation_rect": [
            20,
            365,
            80,
            30
          ]
        }
      },
      {
        "box": {
          "id": "param6",
          "maxclass": "live.dial",
          "patching_rect": [
            20,
            305,
            52,
            52
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            305,
            52,
            52
          ],
          "parameter_enable": 1,
          "varname": "harmonics",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Harmonics",
              "parameter_shortname": "Harmonics",
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_initial": [
                30
              ],
              "parameter_type": 1
            }
          }
        }
      },
      {
        "box": {
          "id": "cc6",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            450,
            82,
            22
          ],
          "text": "ctlout 103 11"
        }
      },
      {
        "box": {
          "id": "label7",
          "maxclass": "comment",
          "patching_rect": [
            105,
            365,
            80,
            30
          ],
          "text": "Pulse",
          "presentation": 1,
          "presentation_rect": [
            105,
            365,
            80,
            30
          ]
        }
      },
      {
        "box": {
          "id": "param7",
          "maxclass": "live.dial",
          "patching_rect": [
            105,
            305,
            52,
            52
          ],
          "presentation": 1,
          "presentation_rect": [
            105,
            305,
            52,
            52
          ],
          "parameter_enable": 1,
          "varname": "pulse",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Pulse",
              "parameter_shortname": "Pulse",
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_initial": [
                20
              ],
              "parameter_type": 1
            }
          }
        }
      },
      {
        "box": {
          "id": "cc7",
          "maxclass": "newobj",
          "patching_rect": [
            105,
            450,
            82,
            22
          ],
          "text": "ctlout 104 11"
        }
      },
      {
        "box": {
          "id": "label8",
          "maxclass": "comment",
          "patching_rect": [
            190,
            365,
            80,
            30
          ],
          "text": "Noise",
          "presentation": 1,
          "presentation_rect": [
            190,
            365,
            80,
            30
          ]
        }
      },
      {
        "box": {
          "id": "param8",
          "maxclass": "live.dial",
          "patching_rect": [
            190,
            305,
            52,
            52
          ],
          "presentation": 1,
          "presentation_rect": [
            190,
            305,
            52,
            52
          ],
          "parameter_enable": 1,
          "varname": "noise",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Noise",
              "parameter_shortname": "Noise",
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_initial": [
                0
              ],
              "parameter_type": 1
            }
          }
        }
      },
      {
        "box": {
          "id": "cc8",
          "maxclass": "newobj",
          "patching_rect": [
            190,
            450,
            82,
            22
          ],
          "text": "ctlout 105 11"
        }
      },
      {
        "box": {
          "id": "label9",
          "maxclass": "comment",
          "patching_rect": [
            275,
            365,
            80,
            30
          ],
          "text": "Metal Noise",
          "presentation": 1,
          "presentation_rect": [
            275,
            365,
            80,
            30
          ]
        }
      },
      {
        "box": {
          "id": "param9",
          "maxclass": "live.dial",
          "patching_rect": [
            275,
            305,
            52,
            52
          ],
          "presentation": 1,
          "presentation_rect": [
            275,
            305,
            52,
            52
          ],
          "parameter_enable": 1,
          "varname": "metal_noise",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Metal Noise",
              "parameter_shortname": "Metal Noise",
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_initial": [
                0
              ],
              "parameter_type": 1
            }
          }
        }
      },
      {
        "box": {
          "id": "cc9",
          "maxclass": "newobj",
          "patching_rect": [
            275,
            450,
            82,
            22
          ],
          "text": "ctlout 115 11"
        }
      },
      {
        "box": {
          "id": "label10",
          "maxclass": "comment",
          "patching_rect": [
            565,
            145,
            80,
            30
          ],
          "text": "EQ",
          "presentation": 1,
          "presentation_rect": [
            565,
            145,
            80,
            30
          ]
        }
      },
      {
        "box": {
          "id": "param10",
          "maxclass": "live.dial",
          "patching_rect": [
            565,
            85,
            52,
            52
          ],
          "presentation": 1,
          "presentation_rect": [
            565,
            85,
            52,
            52
          ],
          "parameter_enable": 1,
          "varname": "eq",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "EQ",
              "parameter_shortname": "EQ",
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_initial": [
                64
              ],
              "parameter_type": 1
            }
          }
        }
      },
      {
        "box": {
          "id": "cc10",
          "maxclass": "newobj",
          "patching_rect": [
            565,
            230,
            82,
            22
          ],
          "text": "ctlout 107 11"
        }
      },
      {
        "box": {
          "id": "label11",
          "maxclass": "comment",
          "patching_rect": [
            650,
            145,
            80,
            30
          ],
          "text": "Compression",
          "presentation": 1,
          "presentation_rect": [
            650,
            145,
            80,
            30
          ]
        }
      },
      {
        "box": {
          "id": "param11",
          "maxclass": "live.dial",
          "patching_rect": [
            650,
            85,
            52,
            52
          ],
          "presentation": 1,
          "presentation_rect": [
            650,
            85,
            52,
            52
          ],
          "parameter_enable": 1,
          "varname": "compression",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Compression",
              "parameter_shortname": "Compression",
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_initial": [
                0
              ],
              "parameter_type": 1
            }
          }
        }
      },
      {
        "box": {
          "id": "cc11",
          "maxclass": "newobj",
          "patching_rect": [
            650,
            230,
            82,
            22
          ],
          "text": "ctlout 113 11"
        }
      },
      {
        "box": {
          "id": "label12",
          "maxclass": "comment",
          "patching_rect": [
            475,
            365,
            80,
            30
          ],
          "text": "LFO Intensity",
          "presentation": 1,
          "presentation_rect": [
            475,
            365,
            80,
            30
          ]
        }
      },
      {
        "box": {
          "id": "param12",
          "maxclass": "live.dial",
          "patching_rect": [
            475,
            305,
            52,
            52
          ],
          "presentation": 1,
          "presentation_rect": [
            475,
            305,
            52,
            52
          ],
          "parameter_enable": 1,
          "varname": "lfo_intensity",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "LFO Intensity",
              "parameter_shortname": "LFO Intensity",
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_initial": [
                0
              ],
              "parameter_type": 1
            }
          }
        }
      },
      {
        "box": {
          "id": "cc12",
          "maxclass": "newobj",
          "patching_rect": [
            475,
            450,
            82,
            22
          ],
          "text": "ctlout 121 11"
        }
      },
      {
        "box": {
          "id": "label13",
          "maxclass": "comment",
          "patching_rect": [
            560,
            365,
            80,
            30
          ],
          "text": "LFO Rate",
          "presentation": 1,
          "presentation_rect": [
            560,
            365,
            80,
            30
          ]
        }
      },
      {
        "box": {
          "id": "param13",
          "maxclass": "live.dial",
          "patching_rect": [
            560,
            305,
            52,
            52
          ],
          "presentation": 1,
          "presentation_rect": [
            560,
            305,
            52,
            52
          ],
          "parameter_enable": 1,
          "varname": "lfo_rate",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "LFO Rate",
              "parameter_shortname": "LFO Rate",
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_initial": [
                64
              ],
              "parameter_type": 1
            }
          }
        }
      },
      {
        "box": {
          "id": "cc13",
          "maxclass": "newobj",
          "patching_rect": [
            560,
            450,
            82,
            22
          ],
          "text": "ctlout 122 11"
        }
      },
      {
        "box": {
          "id": "label14",
          "maxclass": "comment",
          "patching_rect": [
            660,
            370,
            95,
            30
          ],
          "text": "LFO Sync",
          "presentation": 1,
          "presentation_rect": [
            660,
            370,
            95,
            30
          ]
        }
      },
      {
        "box": {
          "id": "param14",
          "maxclass": "live.toggle",
          "patching_rect": [
            672,
            310,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            672,
            310,
            24,
            24
          ],
          "parameter_enable": 1,
          "varname": "lfo_sync",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "LFO Sync",
              "parameter_shortname": "LFO Sync",
              "parameter_initial": [
                0
              ],
              "parameter_type": 2
            }
          }
        }
      },
      {
        "box": {
          "id": "scale14",
          "maxclass": "newobj",
          "patching_rect": [
            660,
            420,
            38,
            22
          ],
          "text": "* 64"
        }
      },
      {
        "box": {
          "id": "cc14",
          "maxclass": "newobj",
          "patching_rect": [
            660,
            455,
            82,
            22
          ],
          "text": "ctlout 120 11"
        }
      },
      {
        "box": {
          "id": "label15",
          "maxclass": "comment",
          "patching_rect": [
            760,
            370,
            95,
            30
          ],
          "text": "LFO One Shot",
          "presentation": 1,
          "presentation_rect": [
            760,
            370,
            95,
            30
          ]
        }
      },
      {
        "box": {
          "id": "param15",
          "maxclass": "live.toggle",
          "patching_rect": [
            772,
            310,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            772,
            310,
            24,
            24
          ],
          "parameter_enable": 1,
          "varname": "lfo_one_shot",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "LFO One Shot",
              "parameter_shortname": "LFO One Shot",
              "parameter_initial": [
                0
              ],
              "parameter_type": 2
            }
          }
        }
      },
      {
        "box": {
          "id": "scale15",
          "maxclass": "newobj",
          "patching_rect": [
            760,
            420,
            38,
            22
          ],
          "text": "* 64"
        }
      },
      {
        "box": {
          "id": "cc15",
          "maxclass": "newobj",
          "patching_rect": [
            760,
            455,
            82,
            22
          ],
          "text": "ctlout 123 11"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "midiin",
            0
          ],
          "destination": [
            "midiout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "loadchan",
            0
          ],
          "destination": [
            "channel",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "param0",
            0
          ],
          "destination": [
            "cc0",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "channel",
            0
          ],
          "destination": [
            "cc0",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cc0",
            0
          ],
          "destination": [
            "midiout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "param1",
            0
          ],
          "destination": [
            "cc1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "channel",
            0
          ],
          "destination": [
            "cc1",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cc1",
            0
          ],
          "destination": [
            "midiout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "param2",
            0
          ],
          "destination": [
            "cc2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "channel",
            0
          ],
          "destination": [
            "cc2",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cc2",
            0
          ],
          "destination": [
            "midiout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "param3",
            0
          ],
          "destination": [
            "cc3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "channel",
            0
          ],
          "destination": [
            "cc3",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cc3",
            0
          ],
          "destination": [
            "midiout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "param4",
            0
          ],
          "destination": [
            "cc4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "channel",
            0
          ],
          "destination": [
            "cc4",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cc4",
            0
          ],
          "destination": [
            "midiout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "param5",
            0
          ],
          "destination": [
            "cc5",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "channel",
            0
          ],
          "destination": [
            "cc5",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cc5",
            0
          ],
          "destination": [
            "midiout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "param6",
            0
          ],
          "destination": [
            "cc6",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "channel",
            0
          ],
          "destination": [
            "cc6",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cc6",
            0
          ],
          "destination": [
            "midiout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "param7",
            0
          ],
          "destination": [
            "cc7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "channel",
            0
          ],
          "destination": [
            "cc7",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cc7",
            0
          ],
          "destination": [
            "midiout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "param8",
            0
          ],
          "destination": [
            "cc8",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "channel",
            0
          ],
          "destination": [
            "cc8",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cc8",
            0
          ],
          "destination": [
            "midiout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "param9",
            0
          ],
          "destination": [
            "cc9",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "channel",
            0
          ],
          "destination": [
            "cc9",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cc9",
            0
          ],
          "destination": [
            "midiout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "param10",
            0
          ],
          "destination": [
            "cc10",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "channel",
            0
          ],
          "destination": [
            "cc10",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cc10",
            0
          ],
          "destination": [
            "midiout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "param11",
            0
          ],
          "destination": [
            "cc11",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "channel",
            0
          ],
          "destination": [
            "cc11",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cc11",
            0
          ],
          "destination": [
            "midiout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "param12",
            0
          ],
          "destination": [
            "cc12",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "channel",
            0
          ],
          "destination": [
            "cc12",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cc12",
            0
          ],
          "destination": [
            "midiout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "param13",
            0
          ],
          "destination": [
            "cc13",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "channel",
            0
          ],
          "destination": [
            "cc13",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cc13",
            0
          ],
          "destination": [
            "midiout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "param14",
            0
          ],
          "destination": [
            "scale14",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "scale14",
            0
          ],
          "destination": [
            "cc14",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "channel",
            0
          ],
          "destination": [
            "cc14",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cc14",
            0
          ],
          "destination": [
            "midiout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "param15",
            0
          ],
          "destination": [
            "scale15",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "scale15",
            0
          ],
          "destination": [
            "cc15",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "channel",
            0
          ],
          "destination": [
            "cc15",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cc15",
            0
          ],
          "destination": [
            "midiout",
            0
          ]
        }
      }
    ]
  }
}
