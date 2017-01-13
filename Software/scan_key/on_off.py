import time as t
import sys
import RPi.GPIO as io

io.setmode(io.BCM)

power       = 18
red         = 26
green 	    = 19
blue 	    = 13

# Don't print warnings about the GPIO already being used
io.setwarnings(False)

# Initialize all the things
io.setup(power, io.OUT)
io.setup(red, io.OUT)
io.setup(green, io.OUT)
io.setup(blue, io.OUT)

io.output(power, False) 	# Make sure Powerswitch Tail is off
io.output(red, False)   	# Turn the Red LED On
io.output(green, True)  	# Turn the Green LED Off
io.output(blue, True)	        # Turn the Blue LED Off

def ledOff(pin):
    io.output(pin, True)

def ledOn(pin):
    io.output(pin, False)

def ledFlash(pin, time):
    count = 0
    while count < 3:
        ledOn(pin)
        t.sleep(time)
        ledOff(pin)
        t.sleep(time)
        count = count + 1

def TurnPowerOff():
    io.output(power, False)
    ledOff(green)
    ledFlash(red, 250/1000)


def TurnPowerOn():
    io.output(power, True)
    ledOn(green)

def blinkKey(keynote):
    if(keynote == True):	
        ledOn(blue)
        t.sleep(.1)
        ledOff(blue)
