#!/usr/bin/python

import RPi.GPIO as GPIO
import time
from on_off import *

class keypad():
    def __init__(self, columnCount = 3):
        GPIO.setmode(GPIO.BCM)

        # CONSTANTS
        if columnCount is 3:
            self.KEYPAD = [
                    [1,2,3],
                    [4,5,6],
                    [7,8,9],
                    ["*",0,"#"]
            ]

            self.ROW    = [12,25,24,23]
            self.COLUMN = [20,21,16]

        elif columnCount is 4:
            self.KEYPAD = [
                    [1,2,3,"A"],
                    [4,5,6,"B"],
                    [7,8,9,"C"],
                    ["*",0,"#","D"]
            ]

            self.ROW    = [18,23,24,25]
            self.COLUMN = [4,17,22,21]
        else:
            return

    def KeyPadAuthor(self):
        # Initialize the keypad class
        kp = keypad()
        arr = []

        # Loop while waiting for a keypress
        digit = None
        while len(arr) < 5:
            tempDigit = self.getKey()
            if tempDigit != digit:
                digit = tempDigit;
                if digit != None:
                    arr.append(str(digit))
                    blinkKey()
                    print (digit)
        # Print | return the result
        return (arr)

    def getKey(self):
        # Set all columns as output low
        for j in range(len(self.COLUMN)):
            GPIO.setup(self.COLUMN[j], GPIO.OUT)
            GPIO.output(self.COLUMN[j], GPIO.LOW)

        # Set all rows as input
        for i in range(len(self.ROW)):
            GPIO.setup(self.ROW[i], GPIO.IN, pull_up_down=GPIO.PUD_UP)

        # Scan rows for pushed key/button
        # A valid key press should set "rowVal"  between 0 and 3.
        rowVal = -1
        for i in range(len(self.ROW)):
            tmpRead = GPIO.input(self.ROW[i])
            if tmpRead == 0:
                rowVal = i

        # if rowVal is not 0 thru 3 then no button was pressed and we can exit
        if rowVal <0 or rowVal >3:
            self.exit()
            return

        # Convert columns to input
        for j in range(len(self.COLUMN)):
            GPIO.setup(self.COLUMN[j], GPIO.IN, pull_up_down=GPIO.PUD_DOWN)

        # Switch the i-th row found from scan to output
        GPIO.setup(self.ROW[rowVal], GPIO.OUT)
        GPIO.output(self.ROW[rowVal], GPIO.HIGH)

        # Scan columns for still-pushed key/button
        # A valid key press should set "colVal"  between 0 and 2.
        colVal = -1
        for j in range(len(self.COLUMN)):
            tmpRead = GPIO.input(self.COLUMN[j])
            if tmpRead == 1:
                colVal=j

        # if colVal is not 0 thru 2 then no button was pressed and we can exit
        if colVal <0 or colVal >2:
            self.exit()
            return

        # Return the value of the key pressed
        self.exit()
        return self.KEYPAD[rowVal][colVal]

    def exit(self):
        # Reinitialize all rows and columns as input at exit
        for i in range(len(self.ROW)):
            GPIO.setup(self.ROW[i], GPIO.IN, pull_up_down=GPIO.PUD_UP)
        for j in range(len(self.COLUMN)):
            GPIO.setup(self.COLUMN[j], GPIO.IN, pull_up_down=GPIO.PUD_UP)

