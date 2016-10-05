#!/bin/bash

# ************** THIS SHELL SCRIPT WILL NOT WORK FOR WINDOWS OS *******************
# SUGGESTION: USE VIRTUALBOX TO LOG INTO A LINUX OPERATING SYSTEM

# FOR MAC USERS
if [ "$(uname)" == "Darwin" ]; then
	# If Using Mac you need to install Homebrew to download the software

	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

	#If you are using the Raspberry Pi you will need to install the Python Development Toolkit. First update your package list::

	brew update

	#To use the software you need to install python3.4

	brew install python3

	#Now install the Dev Kit::

	brew install python-dev

	#Then to install Rpi.GPIO itself::

	brew install python-rpi.gpio

	#You can use the source from just downloading the files or Install it as a library via PIP::

	pip install matrix-keypad

# FOR LINUX USERS        
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then

	#If you are using the Raspberry Pi you will need to install the Python Development Toolkit. First update your package list::

	sudo apt-get update

	#To use the software you need to install python3.4

	sudo apt-get install python3	

	#Now install the Dev Kit::

	sudo apt-get install python-dev

	#Then to install Rpi.GPIO itself::

	sudo apt-get install python-rpi.gpio

	#You can use the source from just downloading the files or Install it as a library via PIP::

	pip install matrix_keypad
	
fi

