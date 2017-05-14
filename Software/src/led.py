import time as t
from neopixel import *

import RPi.GPIO as io
import os
import configparser

class LED(object):
    def __init__(self):
        config = configparser.RawConfigParser() #instantiate config reader
        config.read(os.path.join(os.path.abspath(os.path.dirname(__file__)), 'config.cfg')) #actually read the config file

        io.setmode(io.BCM)

        # LED self.strip configuration:
        LED_COUNT       = int(config.get('_led', 'count'))       # Number of LED pixels.
        LED_PIN         = int(config.get('_led', 'pin'))         # GPIO pin connected to the pixels (must support PWM!).
        LED_FREQ_HZ     = int(config.get('_led', 'freq_hz'))     # LED signal frequency in hertz (usually 800khz)
        LED_DMA         = int(config.get('_led', 'dma'))         # DMA channel to use for generating signal (try 5)
        LED_BRIGHTNESS  = int(config.get('_led', 'brightness'))  # Set to 0 for darkest and 255 for brightest
        LED_INVERT      = bool(config.get('_led', 'invert'))      # True to invert the signal (when using NPN transistor level shift)

        # For whatever reason Colors are GBR in this library
        self.COLOR_RED       = Color(0, 255, 0)
        self.COLOR_GREEN     = Color(255, 0, 0)
        self.COLOR_BLUE      = Color(0, 0, 255)
        self.COLOR_WHITE     = Color(255, 255, 255)
        self.COLOR_BLACK     = Color(0, 0, 0)
        self.COLOR_CURRENT   = Color(106, 234, 32)

        # Create NeoPixel object with appropriate configuration.
        self.strip = Adafruit_NeoPixel(LED_COUNT, LED_PIN, LED_FREQ_HZ, LED_DMA, LED_INVERT, LED_BRIGHTNESS)

        self.strip.begin()
        self.strip.show()

        self.strip.setPixelColor(0, self.COLOR_RED)
        self.strip.show()
        t.sleep(75/100)

        self.strip.setPixelColor(0, self.COLOR_GREEN)
        self.strip.show()
        t.sleep(75/100)

        self.strip.setPixelColor(0, self.COLOR_BLUE)
        self.strip.show()
        t.sleep(75/100)

        self.strip.setPixelColor(0, self.COLOR_WHITE)
        self.strip.show()
        t.sleep(75/100)

        self.strip.setPixelColor(0, self.COLOR_RED)
        self.strip.show()
        t.sleep(1)


    def off(self):
        self.COLOR_CURRENT
        self.COLOR_CURRENT = (self.strip.getPixelColor(0) if self.strip.getPixelColor(0) != self.COLOR_BLACK else self.COLOR_CURRENT) # Should be replaced with a return
        self.strip.setPixelColor(0, self.COLOR_BLACK)
        self.strip.show()

    def on(self):
        self.strip.setPixelColor(0, self.COLOR_CURRENT) # should replace with a parameter
        self.strip.show()

    def flash(self, time):
        count = 0
        while count < 3:
            ledOn()
            t.sleep(time)
            ledOff()
            t.sleep(time)
            count = count + 1

    def blinkKey(self):
        ledOff()
        self.strip.setPixelColor(1, Color(100, 0, 100))
        self.strip.show()
        t.sleep(.3)
        ledOn()

    def blinkKey2(self):
        ledOn()
        self.strip.setPixelColor(1, Color(0, 255, 255))
        self.strip.show()
        t.sleep(.3)
        ledOff()
