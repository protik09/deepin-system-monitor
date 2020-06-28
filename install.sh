#!/bin/bash

# Install Deps
sudo apt install libpcap-dev libncurses5-dev libprocps-dev libxtst-dev libxcb-util0-dev qt5-default -y

# Fix an issue with the qt5 core library
sudo strip --remove-section=.note.ABI-tag /usr/lib/x86_64-linux-gnu/libQt5Core.so.5

# Make the program
mkdir build || pushd build 
qmake .. && make -j$(nproc)
