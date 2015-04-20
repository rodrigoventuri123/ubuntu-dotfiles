#!/bin/bash

#Install Sublime Text
echo "Install Sublime Text"
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer
sudo apt-get install wget

echo "Links List of Plugins and Settings"
DIR="$( cd "$( dirname "$0" )" && pwd )"
ln -sfv $DIR/../sublime/Default.sublime-theme /home/$USER/.config/sublime-text-3/Packages/User/Default.sublime-theme
ln -sfv $DIR/../sublime/Package\ Control.sublime-settings /home/$USER/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings
ln -sfv $DIR/../sublime/Preferences.sublime-settings /home/$USER/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
ln -sfv $DIR/../sublime/Python.sublime-settings /home/$USER/.config/sublime-text-3/Packages/User/Python.sublime-settings

#Install Package Manager for sublime
wget https://packagecontrol.io/Package%20Control.sublime-package
mv Package\ Control.sublime-package  /home/$USER/.config/sublime-text-3/Installed\ Packages/Package\ Control.sublime-package

