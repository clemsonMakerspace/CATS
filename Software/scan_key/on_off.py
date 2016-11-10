import time 
import sys
import RPi.GPIO as io 
io.setmode(io.BCM) 
  
power_pin = 21
red_pin = 26
green_pin = 19
blue_pin = 13

io.setwarnings(False) 
io.setup(power_pin, io.OUT)
io.output(power_pin, False)
io.setup(red_pin, io.OUT)
io.setup(green_pin, io.OUT)
io.setup(blue_pin, io.OUT)
io.output(red_pin, False)
io.output(green_pin, False)
io.output(blue_pin, False)

def TurnPowerOff():
	io.output(power_pin, False)
	io.output(red_pin, True)

def TurnPowerOn():
	io.output(power_pin, True)
	io.output(green_pin, True)
