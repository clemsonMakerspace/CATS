#########################################################################
#    USAGE: python3 main.py						#
#									#
#    MAKE SURE YOU USE PYTHON3 OTHERWISE YOU'RE GOING TO GET ERRORS!	#
#									#
#########################################################################

from keypad import *
from on_off import *
from rpiCardScan import *
from AuthenticationSQL import *
import time
import signal
import sys
import pymysql
import datetime
import os

if __name__ == '__main__':

    # connecting to the SQL Server and Database
    cnx = pymysql.connect(user='CATS', password='CATS', host='192.168.1.2', database='CATS', autocommit=True)

    cursor = cnx.cursor()

    # select the first and last name, the CUID, their Card String, and PIN from
    # the database
    cursor.execute("SELECT firstName, lastName, CUID, t1String, Pin FROM USER")
    data = cursor.fetchall()

    # initialize the keypad and important variables
    kp = keypad()
    ID = None; readpad = 0; join = 0; character = 0; length = 0;
    array = [];

    # While the same card is still being read then do the following:
    # ask for PIN and search the SQL database to find the user
    while True:
        count = 0
        flag = False
        # Ask for input from the RPI, if no input within __ seconds then quit
        ID = RPICardScan()
        holdID = ID
        while (ID == holdID and holdID != None and holdID[0:5] == "02350"):
            try:
                author = machineAuth(ID, cursor)
                if (author == True):
                    break
                # Loop that prompts if the PIN was incorrect then re-enter it
                while (flag == False):
                    array = None
                    blinkKey2()
                    count = count + 1
                    # if the user has attempted their PIN 3 times then quit
                    if (count == 4):
                        CUID = getID(holdID, cursor)
                        errorSQL(CUID, 4)
                        break

                    # interrupt handler that sets a timer in the background
                    signal.signal(signal.SIGALRM, kp.timer)
                    signal.alarm(7)

                    try:
                        # type in the user's PIN
                        array = kp.KeyPadAuthor()

                        # function to check if user exists and if PIN is correct
                        flag = twoFactorAuth(ID, array, cursor)

                    except:
                        break
                # disable the interrupt handler timer
                signal.alarm(0)

                holdID = RPICardScan()
                # if PIN is incorrect and card is still there: ask to re-enter PIN
                if flag == False and holdID != None:
                    continue
                # if card has been taken off after timer: re-prompt to scan card
                elif holdID == None:
                    break
                # Otherwise this means PIN is good and user is still there. Give access
                else:
                    pass

                array = []
                while (holdID != None and holdID[0:5]!="02350"):
                    holdID = RPICardScan()

            except KeyboardInterrupt:
                print ("")
                cursor.close()
                cnx.close()
                sys.exit(0)
        # turn off the power if it's been turned on
        TurnPowerOff()

