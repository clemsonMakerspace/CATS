import time as t
import sys
import RPi.GPIO as io
import buzzer
import led
import os
import configparser

config = configparser.RawConfigParser() #instantiate config reader
config.read(os.path.join(os.path.abspath(os.path.dirname(__file__)), 'config.cfg')) #actually read the config file

led = led.LED()
piezo = buzzer.Buzzer()
power = int(config.get('_relay', 'pin'))
# Don't print warnings about the GPIO already being used
io.setwarnings(False)
io.setup(power, io.OUT)
io.output(power, False) # Make sure Powerswitch Tail is off

def TurnPowerOff():
    io.output(power, False)
    piezo.play(5)
    led.off()

def TurnPowerOn():
    io.output(power, True)
    piezo.play(1)
    led.on()
