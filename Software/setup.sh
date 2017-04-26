#!/bin/bash

#If you are using the Raspberry Pi you will need to install the Python Development Toolkit.
#First update your package list::
sudo apt-get update

#Now install the Dev Kit::
sudo apt-get --assume-yes install python-dev python-pip gcc

sudo apt-get --assume-yes install linux-headers-$(uname -r)

#To use the software you need to install python3.4::
sudo apt-get --assume-yes install python3

#install python setup tools::
sudo apt-get --assume-yes install python3-setuptools

sudo easy_install3 pip

#install python3
sudo apt-get --assume-yes install python3

#install python3 pip tool
sudo apt-get --assume-yes install python3-pip

#install the sql 
sudo pip3 install pymysql

#instal the read/write input events
sudo pip install evdev

#Then to install Rpi.GPIO itself::
sudo pip install rpi.gpio

#You can use the source from just downloading the files or Install it as a library via PIP::
sudo -H pip install matrix_keypad
