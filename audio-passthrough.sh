#! /bin/bash

# GUI source: https://www.howtogeek.com/435020/how-to-add-a-gui-to-linux-shell-scripts/
# Linux audio passthrough idea: https://askubuntu.com/questions/123798/how-to-hear-my-voice-in-speakers-with-a-mic

windowtitle="Audio Passthrough Configuration Utility"

if pactl list modules | grep -q module-loopback
then
    zenity --question --width 300 --text "Playback module is loaded. Would you like to unload the playback module? (I.e. stop audio passthrough?)" --title="$windowtitle"
    if [ $? -eq 0 ];
    then
        pactl unload-module module-loopback
        if [ $? -eq 0 ];
        then
            zenity --info --width 300 --text "Playback module unloaded." --title="$windowtitle"
        else
            zenity --error --width 300 --text "Failed to unload playback module." --title="$windowtitle"
        fi
    fi

else
    zenity --question --width 300 --text "Playback module is unloaded. Would you like to load the playback module? (I.e. start audio passthrough?)" --title="$windowtitle"
    if [ $? -eq 0 ];
    then
        pactl load-module module-loopback latency_msec=1
        if [ $? -eq 0 ];
        then
            zenity --info --width 300 --text "Playback module loaded." --title="$windowtitle"
        else
            zenity --error --width 300 --text "Failed to load playback module." --title="$windowtitle"
        fi
    fi
fi
