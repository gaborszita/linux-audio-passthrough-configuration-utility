# linux-audio-passthrough-configuration-utility

This utility allows you to pass audio on from a microphone to a speaker to linux.

## Instructions for setting it up:

1. Install PulseAudio Volume Control

   ```sudo apt-get install pavucontrol```

2. Download the audio-passthrough.sh file either by simply downloading it or cloning this repository. For newbies, I suggest creating a new file on your computer (it would be the best if you name that file also audio-passthrough.sh) and copying the contents of the audio-passthrough.sh file on github to the file you created.

   If you chose the repository cloning method, you can use this command to clone it:
   
   ```git clone https://github.com/gaborszita/linux-audio-passthrough-configuration-utility```
3. Add execute permission to the audio-passthrough.sh file. (First, make sure to navigate to the folder that contains this file.)

   ```chmod +x audio-passthrough.sh```
4. Test it out: You can either double-click the file or enter the command ```./audio-passthrough.sh``` to run the file.
   You should get something like this pop up:
   
   ![Audio Passthrough Configuration Utility screenshot 1](https://gaborszita.net/wp-content/uploads/2021/03/Screenshot_20210323_222005.png)

   Simply click yes and it will start the audio passthrough. You will hear on your selected speaker the input from your selected microphone.
   
   To stop the audio passthrough, run the file again and this time it will ask if you want to stop audio passthrough.
   
5. (optional) For ease of use: Create a link on your desktop pointing this file, so you can run it more easily.

## Troubleshooting:

1. If the utility successfully loads the playback module, but you still can't hear the microphone audio on your speaker, check if you have selected the correct speaker and microphone. Also make sure that the microphone is detecting sound (i.e. it is sending audio signals to the computer). A good tool for this is https://www.onlinemictest.com/.
2. If the utility says "Failed to load/unload playback module.", check if PulseAudio Volume Control is installed properly.
