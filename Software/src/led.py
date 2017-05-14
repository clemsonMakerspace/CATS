import time as t
#import sys
import RPi.GPIO as io
from neopixel import *
import configparser

class LED(object):
    def __init__(self):
        config = configparser.RawConfigParser() #instantiate config reader
        config.read(os.path.join(os.path.abspath(os.path.dirname(__file__)), 'config.cfg')) #actually read the config file

        io.setmode(io.BCM)

        # LED strip configuration:
        LED_COUNT       = config.get('_led', 'count')       # Number of LED pixels.
        LED_PIN         = config.get('_led', 'pin')         # GPIO pin connected to the pixels (must support PWM!).
        LED_FREQ_HZ     = config.get('_led', 'freq_hz')     # LED signal frequency in hertz (usually 800khz)
        LED_DMA         = config.get('_led', 'dma')         # DMA channel to use for generating signal (try 5)
        LED_BRIGHTNESS  = config.get('_led', 'brightness')  # Set to 0 for darkest and 255 for brightest
        LED_INVERT      = config.get('_led', 'invert')      # True to invert the signal (when using NPN transistor level shift)

        # For whatever reason Colors are GBR in this library
        COLOR_RED       = Color(0, 255, 0)
        COLOR_GREEN     = Color(255, 0, 0)
        COLOR_BLUE      = Color(0, 0, 255)
        COLOR_WHITE     = Color(255, 255, 255)
        COLOR_BLACK     = Color(0, 0, 0)
        COLOR_CURRENT   = Color(106, 234, 32)

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


    def off():
        global COLOR_CURRENT
        COLOR_CURRENT = (strip.getPixelColor(0) if strip.getPixelColor(0) != COLOR_BLACK else COLOR_CURRENT) # Should be replaced with a return
        strip.setPixelColor(0, COLOR_BLACK)
        strip.show()

    def on():
        strip.setPixelColor(0, COLOR_CURRENT) # should replace with a parameter
        strip.show()

    def flash(time):
        count = 0
        while count < 3:
            ledOn()
            t.sleep(time)
            ledOff()
            t.sleep(time)
            count = count + 1

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
