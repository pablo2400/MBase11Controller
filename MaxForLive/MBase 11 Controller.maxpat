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
      680,
      176
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
    "devicewidth": 680,
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
            550,
            118,
            52,
            22
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
              "parameter_type": 1,
              "parameter_order": 17
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
            210,
            104,
            44,
            44
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
              "parameter_type": 1,
              "parameter_order": 11
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
            12,
            28,
            44,
            44
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
              "parameter_type": 1,
              "parameter_order": 0
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
            78,
            28,
            44,
            44
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
              "parameter_type": 1,
              "parameter_order": 1
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
            144,
            28,
            44,
            44
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
              "parameter_type": 1,
              "parameter_order": 2
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
            78,
            104,
            44,
            44
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
              "parameter_type": 1,
              "parameter_order": 9
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
            408,
            28,
            44,
            44
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
              "parameter_type": 1,
              "parameter_order": 6
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
            210,
            28,
            44,
            44
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
              "parameter_type": 1,
              "parameter_order": 3
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
            276,
            28,
            44,
            44
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
              "parameter_type": 1,
              "parameter_order": 4
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
            342,
            28,
            44,
            44
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
              "parameter_type": 1,
              "parameter_order": 5
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
            144,
            104,
            44,
            44
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
              "parameter_type": 1,
              "parameter_order": 10
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
            474,
            28,
            44,
            44
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
              "parameter_type": 1,
              "parameter_order": 7
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
            12,
            104,
            44,
            44
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
              "parameter_type": 1,
              "parameter_order": 8
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
            408,
            104,
            44,
            44
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
              "parameter_type": 1,
              "parameter_order": 14
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
            474,
            104,
            44,
            44
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
              "parameter_type": 1,
              "parameter_order": 15
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
            286,
            116,
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
              "parameter_type": 2,
              "parameter_order": 12
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
            352,
            116,
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
              "parameter_type": 2,
              "parameter_order": 13
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
      },
      {
        "box": {
          "id": "toggleLabel14",
          "maxclass": "comment",
          "text": "LFO SYNC",
          "fontsize": 9,
          "patching_rect": [
            276,
            94,
            62,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            276,
            94,
            62,
            16
          ]
        }
      },
      {
        "box": {
          "id": "toggleLabel15",
          "maxclass": "comment",
          "text": "ONE SHOT",
          "fontsize": 9,
          "patching_rect": [
            342,
            94,
            62,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            342,
            94,
            62,
            16
          ]
        }
      },
      {
        "box": {
          "id": "midiChannelLabel",
          "maxclass": "comment",
          "text": "MIDI CH",
          "fontsize": 9,
          "patching_rect": [
            550,
            102,
            52,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            550,
            102,
            52,
            16
          ]
        }
      },
      {
        "box": {
          "id": "program",
          "maxclass": "live.dial",
          "parameter_enable": 1,
          "varname": "program_change",
          "patching_rect": [
            850,
            70,
            52,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            554,
            28,
            44,
            44
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Program Change",
              "parameter_shortname": "Program",
              "parameter_mmin": 0,
              "parameter_mmax": 109,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_order": 16,
              "parameter_type": 0,
              "parameter_unitstyle": 0
            }
          },
          "parameter_mappable": 1,
          "showname": 1,
          "shownumber": 0
        }
      },
      {
        "box": {
          "id": "programDisplay",
          "maxclass": "message",
          "text": "Pr0",
          "fontsize": 10,
          "patching_rect": [
            780,
            100,
            52,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            550,
            74,
            52,
            20
          ],
          "ignoreclick": 1,
          "textjustification": 1
        }
      },
      {
        "box": {
          "id": "pgmout",
          "maxclass": "newobj",
          "text": "pgmout 11",
          "patching_rect": [
            850,
            520,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "programTrigger",
          "maxclass": "newobj",
          "text": "t i i",
          "patching_rect": [
            780,
            150,
            38,
            22
          ]
        }
      },
      {
        "box": {
          "id": "programIsUser",
          "maxclass": "newobj",
          "text": "< 10",
          "patching_rect": [
            830,
            150,
            38,
            22
          ]
        }
      },
      {
        "box": {
          "id": "programGateSelector",
          "maxclass": "newobj",
          "text": "+ 1",
          "patching_rect": [
            830,
            185,
            34,
            22
          ]
        }
      },
      {
        "box": {
          "id": "programGate",
          "maxclass": "newobj",
          "text": "gate 2",
          "patching_rect": [
            780,
            220,
            45,
            22
          ]
        }
      },
      {
        "box": {
          "id": "programFactoryOffset",
          "maxclass": "newobj",
          "text": "- 10",
          "patching_rect": [
            750,
            255,
            38,
            22
          ]
        }
      },
      {
        "box": {
          "id": "programFactoryFormat",
          "maxclass": "newobj",
          "text": "sprintf r%02ld",
          "patching_rect": [
            710,
            290,
            92,
            22
          ]
        }
      },
      {
        "box": {
          "id": "programUserFormat",
          "maxclass": "newobj",
          "text": "sprintf Pr%ld",
          "patching_rect": [
            820,
            255,
            86,
            22
          ]
        }
      },
      {
        "box": {
          "id": "programDisplaySet",
          "maxclass": "newobj",
          "text": "prepend set",
          "patching_rect": [
            780,
            325,
            75,
            22
          ]
        }
      },
      {
        "box": {
          "id": "liveBanks",
          "maxclass": "newobj",
          "text": "live.banks",
          "patching_rect": [
            650,
            520,
            68,
            22
          ]
        }
      },
      {
        "box": {
          "id": "bank1",
          "maxclass": "newobj",
          "text": "loadmess new 0 Main Tune Pitch Decay Harmonics Pulse Noise Attack EQ",
          "patching_rect": [
            20,
            560,
            430,
            22
          ]
        }
      },
      {
        "box": {
          "id": "bank2",
          "maxclass": "newobj",
          "text": "loadmess new 1 More Compression Gate\\ Time Metal\\ Noise Volume LFO\\ Sync LFO\\ One\\ Shot LFO\\ Intensity LFO\\ Rate",
          "patching_rect": [
            20,
            590,
            680,
            22
          ]
        }
      },
      {
        "box": {
          "id": "bank3",
          "maxclass": "newobj",
          "text": "loadmess new 2 Setup Program\\ Change MIDI\\ Channel - - - - - -",
          "patching_rect": [
            20,
            620,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "randomizeButton",
          "maxclass": "live.text",
          "text": "RANDOMIZE",
          "texton": "RANDOMIZE",
          "mode": 0,
          "parameter_enable": 0,
          "patching_rect": [
            606,
            36,
            70,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            606,
            36,
            70,
            24
          ],
          "active": 1,
          "appearance": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "random1",
          "maxclass": "newobj",
          "text": "random 128",
          "patching_rect": [
            610,
            274,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "random3",
          "maxclass": "newobj",
          "text": "random 128",
          "patching_rect": [
            610,
            322,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "random4",
          "maxclass": "newobj",
          "text": "random 128",
          "patching_rect": [
            610,
            346,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "random5",
          "maxclass": "newobj",
          "text": "random 128",
          "patching_rect": [
            610,
            370,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "random6",
          "maxclass": "newobj",
          "text": "random 128",
          "patching_rect": [
            610,
            394,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "random7",
          "maxclass": "newobj",
          "text": "random 128",
          "patching_rect": [
            610,
            418,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "random8",
          "maxclass": "newobj",
          "text": "random 128",
          "patching_rect": [
            610,
            442,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "random9",
          "maxclass": "newobj",
          "text": "random 128",
          "patching_rect": [
            610,
            466,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "random10",
          "maxclass": "newobj",
          "text": "random 128",
          "patching_rect": [
            610,
            490,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "random11",
          "maxclass": "newobj",
          "text": "random 128",
          "patching_rect": [
            610,
            514,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "random12",
          "maxclass": "newobj",
          "text": "random 128",
          "patching_rect": [
            610,
            538,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "random13",
          "maxclass": "newobj",
          "text": "random 128",
          "patching_rect": [
            610,
            562,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "random14",
          "maxclass": "newobj",
          "text": "random 2",
          "patching_rect": [
            610,
            586,
            62,
            22
          ]
        }
      },
      {
        "box": {
          "id": "random15",
          "maxclass": "newobj",
          "text": "random 2",
          "patching_rect": [
            610,
            610,
            62,
            22
          ]
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
      },
      {
        "patchline": {
          "source": [
            "program",
            0
          ],
          "destination": [
            "pgmout",
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
            "pgmout",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pgmout",
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
            "program",
            0
          ],
          "destination": [
            "programTrigger",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "programTrigger",
            1
          ],
          "destination": [
            "programIsUser",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "programIsUser",
            0
          ],
          "destination": [
            "programGateSelector",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "programGate",
            0
          ],
          "destination": [
            "programFactoryOffset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "programFactoryOffset",
            0
          ],
          "destination": [
            "programFactoryFormat",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "programGate",
            1
          ],
          "destination": [
            "programUserFormat",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "programFactoryFormat",
            0
          ],
          "destination": [
            "programDisplaySet",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "programUserFormat",
            0
          ],
          "destination": [
            "programDisplaySet",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "programDisplaySet",
            0
          ],
          "destination": [
            "programDisplay",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bank1",
            0
          ],
          "destination": [
            "liveBanks",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bank2",
            0
          ],
          "destination": [
            "liveBanks",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bank3",
            0
          ],
          "destination": [
            "liveBanks",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "programGateSelector",
            0
          ],
          "destination": [
            "programGate",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "programTrigger",
            0
          ],
          "destination": [
            "programGate",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "random1",
            0
          ],
          "destination": [
            "param1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "random3",
            0
          ],
          "destination": [
            "param3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "random4",
            0
          ],
          "destination": [
            "param4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "random5",
            0
          ],
          "destination": [
            "param5",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "random6",
            0
          ],
          "destination": [
            "param6",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "random7",
            0
          ],
          "destination": [
            "param7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "random8",
            0
          ],
          "destination": [
            "param8",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "random9",
            0
          ],
          "destination": [
            "param9",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "random10",
            0
          ],
          "destination": [
            "param10",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "random11",
            0
          ],
          "destination": [
            "param11",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "random12",
            0
          ],
          "destination": [
            "param12",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "random13",
            0
          ],
          "destination": [
            "param13",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "random14",
            0
          ],
          "destination": [
            "param14",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "random15",
            0
          ],
          "destination": [
            "param15",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "randomizeButton",
            0
          ],
          "destination": [
            "random1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "randomizeButton",
            0
          ],
          "destination": [
            "random3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "randomizeButton",
            0
          ],
          "destination": [
            "random4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "randomizeButton",
            0
          ],
          "destination": [
            "random5",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "randomizeButton",
            0
          ],
          "destination": [
            "random6",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "randomizeButton",
            0
          ],
          "destination": [
            "random7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "randomizeButton",
            0
          ],
          "destination": [
            "random8",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "randomizeButton",
            0
          ],
          "destination": [
            "random9",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "randomizeButton",
            0
          ],
          "destination": [
            "random10",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "randomizeButton",
            0
          ],
          "destination": [
            "random11",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "randomizeButton",
            0
          ],
          "destination": [
            "random12",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "randomizeButton",
            0
          ],
          "destination": [
            "random13",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "randomizeButton",
            0
          ],
          "destination": [
            "random14",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "randomizeButton",
            0
          ],
          "destination": [
            "random15",
            0
          ]
        }
      }
    ]
  }
}
