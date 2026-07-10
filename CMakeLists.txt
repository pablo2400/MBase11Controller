cmake_minimum_required(VERSION 3.22)

project(MBase11Controller VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

option(MBASE11_FETCH_JUCE "Download JUCE with CMake FetchContent" ON)
set(MBASE11_JUCE_GIT_TAG "8.0.8" CACHE STRING "JUCE git tag to use when fetching")

if (MBASE11_FETCH_JUCE)
    include(FetchContent)
    FetchContent_Declare(
        JUCE
        GIT_REPOSITORY https://github.com/juce-framework/JUCE.git
        GIT_TAG ${MBASE11_JUCE_GIT_TAG}
    )
    FetchContent_MakeAvailable(JUCE)
else()
    find_package(JUCE CONFIG REQUIRED)
endif()

juce_add_plugin(MBase11Controller
    COMPANY_NAME "Pawel"
    BUNDLE_ID "pl.pawel.mbase11controller"
    PLUGIN_MANUFACTURER_CODE Pwl1
    PLUGIN_CODE Mb11
    FORMATS VST3 AU AUv3 Standalone
    PRODUCT_NAME "MBase 11 Controller"
    IS_SYNTH TRUE
    NEEDS_MIDI_INPUT TRUE
    NEEDS_MIDI_OUTPUT TRUE
    IS_MIDI_EFFECT FALSE
    COPY_PLUGIN_AFTER_BUILD FALSE
)

target_sources(MBase11Controller PRIVATE
    Source/Main.cpp
    Source/MBase11Midi.cpp
    Source/MBase11Parameters.cpp
    Source/PluginEditor.cpp
    Source/PluginProcessor.cpp
)

target_compile_definitions(MBase11Controller PUBLIC
    JUCE_WEB_BROWSER=0
    JUCE_USE_CURL=0
    JUCE_VST3_CAN_REPLACE_VST2=0
)

target_link_libraries(MBase11Controller PRIVATE
    juce::juce_audio_utils
    juce::juce_audio_plugin_client
)

if (APPLE)
    foreach(format_target
            MBase11Controller_VST3
            MBase11Controller_AU
            MBase11Controller_Standalone)
        if (TARGET ${format_target})
            add_custom_command(TARGET ${format_target} POST_BUILD
                COMMAND /usr/bin/codesign --force --deep --sign - "$<TARGET_BUNDLE_DIR:${format_target}>"
                VERBATIM)
        endif()
    endforeach()
endif()
