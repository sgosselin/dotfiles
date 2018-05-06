#!/bin/sh
#
# Packages for development environment.
#

# OpenCV 3.0
brew tap homebrew/science
brew install opencv3 --with-contrib --with-ffmpeg --with-opengl --HEAD

# Python 3
brew install python3
sudo pip3 install virtualenv
sudo pip3 install virtualenvwrapper
sudo pip3 install numpy
sudo pip3 install matplotlib
