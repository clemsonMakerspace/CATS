import time as t
import sys
import RPi.GPIO as io
import Buzzer as Buz
from neopixel import *

io.setmode(io.BCM)

# LED strip configuration:
LED_COUNT       = 1       # Number of LED pixels.
LED_PIN         = 18      # GPIO pin connected to the pixels (must support PWM!).
LED_FREQ_HZ     = 800000  # LED signal frequency in hertz (usually 800khz)
LED_DMA         = 5       # DMA channel to use for generating signal (try 5)
LED_BRIGHTNESS  = 255     # Set to 0 for darkest and 255 for brightest
LED_INVERT      = False   # True to invert the signal (when using NPN transistor level shift)

power           = 4

# For whatever reason Colors are GBR in this library
COLOR_RED       = Color(0, 255, 0)
COLOR_GREEN     = Color(255, 0, 0)
COLOR_BLUE      = Color(0, 0, 255)
COLOR_WHITE     = Color(255, 255, 255)
COLOR_BLACK     = Color(0, 0, 0)
COLOR_CURRENT   = Color(106, 234, 32)

# Don't print warnings about the GPIO already being used
io.setwarnings(False)
io.setup(power, io.OUT)
io.output(power, False) # Make sure Powerswitch Tail is off

# Create NeoPixel object with appropriate configuration.
strip = Adafruit_NeoPixel(LED_COUNT, LED_PIN, LED_FREQ_HZ, LED_DMA, LED_INVERT, LED_BRIGHTNESS)

strip.begin()
strip.show()

strip.setPixelColor(0, COLOR_RED)
strip.show()
t.sleep(75/100)

strip.setPixelColor(0, COLOR_GREEN)
strip.show()
t.sleep(75/100)

strip.setPixelColor(0, COLOR_BLUE)
strip.show()
t.sleep(75/100)

strip.setPixelColor(0, COLOR_WHITE)
strip.show()
t.sleep(75/100)

strip.setPixelColor(0, COLOR_RED)
strip.show()
t.sleep(1)

piezo = Buz.Buzzer()
#io.output(red, False)   	# Turn the Red LED On
#io.output(green, True)  	# Turn the Green LED Off
#io.output(blue, True)	        # Turn the Blue LED Off

def ledOff():
    global COLOR_CURRENT
    COLOR_CURRENT = (strip.getPixelColor(0) if strip.getPixelColor(0) != COLOR_BLACK else COLOR_CURRENT) # Should be replaced with a return
    strip.setPixelColor(0, COLOR_BLACK)
    strip.show()

def ledOn():
    strip.setPixelColor(0, COLOR_CURRENT) # should replace with a parameter
    strip.show()

def ledFlash(time):
    count = 0
    while count < 3:
        ledOn()
        t.sleep(time)
        ledOff()
        t.sleep(time)
        count = count + 1

def TurnPowerOff():
    io.output(power, False)
    #piezo.play(5)
    ledOff()
    #ledFlash(250/1000)


def TurnPowerOn():
    io.output(power, True)
    #piezo.play(1)

    ledOn()

def blinkKey():
    ledOff()
    strip.setPixelColor(1, Color(100, 0, 100))
    strip.show()
    t.sleep(.3)
    ledOn()

def blinkKey2():
    ledOn()
    strip.setPixelColor(1, Color(0, 255, 255))
    strip.show()
    t.sleep(.3)
    ledOff()
