import time 
import sys
import RPi.GPIO as io

io.setmode(io.BCM) 

power_pin 	= 18
red_pin 	= 26
green_pin 	= 19
blue_pin 	= 13

# Don't print warnings about the GPIO already being used
io.setwarnings(False) 

# Initialize all the things
io.setup(power_pin, io.OUT)
io.setup(red_pin, io.OUT)
io.setup(green_pin, io.OUT)
io.setup(blue_pin, io.OUT)

io.output(power_pin, False) 	# Make sure Powerswitch Tail is off
io.output(red_pin, False)		# Turn the Red LED On
io.output(green_pin, True)		# Turn the Green LED Off
io.output(blue_pin, True)		# Turn the Blue LED Off

def TurnPowerOff():
	io.output(power_pin, False)
	io.output(red_pin, False)

def TurnPowerOn():
	io.output(power_pin, True)
	io.output(red_pin, True)
	io.output(green_pin, False)
