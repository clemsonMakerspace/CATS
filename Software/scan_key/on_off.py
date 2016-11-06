import time 
import sys
import RPi.GPIO as io 
io.setmode(io.BCM) 
  
power_pin = 21

io.setwarnings(False) 
io.setup(power_pin, io.OUT)
io.output(power_pin, False)

def TurnPowerOff():
	io.output(power_pin, False)

def TurnPowerOn():
	io.output(power_pin, True)
