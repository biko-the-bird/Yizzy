#!/usr/bin/python
import os

#commands
get_brew =  "/usr/bin/ruby -e \"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)\""
get_youtubeDL = "brew install youtube-dl"
get_libav = "brew install libav"
disable_analytics = "brew analytics off"
get_python3 = "brew install python3"

print("\nStep 1:\n")
print("Installing Homebrew")
print("command to execute ==>" + get_brew)
os.system(get_brew)
print("\nStep 2:\n")
print("Installing youtube-dl")
print("command to execute ==>" + get_youtubeDL)
os.system(get_youtubeDL)
print("\nStep 3:\n")
print("Installing libav")
print("command to execute ==>" + get_libav)
os.system(get_libav)
print("\nStep 4:\n")
print("Disabling analytics")
print("command to execute ==>" + disable_analytics)
os.system(disable_analytics)
print("\nStep 5:\n")
print("installing Python 3")
print("command to execute ==>" + get_python3)
os.system(get_python3)
print("\nInstall complete. \nClose this window and open the \"HOW_TO_DOWNLOAD_MUSIC_FROM_YOUTUBE\" instructions file to get your first song from youtube. :)")