#########################################################################
#    USAGE: python3 main.py                                             #
#                                                                       #
#    MAKE SURE YOU USE PYTHON3 OTHERWISE YOU'RE GOING TO GET ERRORS!	#
#                                                                       #
#########################################################################

from keypad import *
from on_off import *
from rpiCardScan import *
import sql
import time
import signal
import sys
import pymysql
import datetime
import os

if __name__ == '__main__':
    # initialize the keypad and important variables
    kp = keypad()
    ID = None; readpad = 0; join = 0; character = 0; length = 0;
    pinArray = [];
    db = sql.SQL()

    # While the same card is still being read then do the following:
    # ask for PIN and search the SQL database to find the user
    while True:
        count = 0
        flag = False
        check_opt = False
        # Ask for input from the RPI, if no input within __ seconds then quit
        ID = RPICardScan()
        holdID = ID
        while (ID == holdID and holdID != None and holdID[0:5] == "02350"):
            try:
                author = db.setMachAuth(ID)
                # USER IS NOT AUTHORIZED SO PUT IN ID AGAIN
                if (author == True):
                    break

                # Loop that prompts if the PIN was incorrect then re-enter it
                while (flag == False):
                    #blinkKey2()

                    # Get User Optional PIN
                    opt = db.getUser2FA(holdID)
                    # Get Machine Optional PIN
                    mopt = db.getMachineOPT()
                    # Check if the user needs to put in PIN or not
                    check_opt = db.check2FA(opt, mopt) # should ignore mopt

                    # Passes through if user does not need PIN
                    # Otherwise, ask the user for a PIN
                    if (check_opt == True):
                        flag = True
                        break
                    else:
                        pinArray = None
                        # if the user has attempted their PIN 3 times then quit
                        if (count == 3):
                            CUID = db.getCUID(holdID)
                            db.eventLog(CUID, 4)
                            break

                        count = count + 1

                        # interrupt handler that sets a timer in the background
                        signal.signal(signal.SIGALRM, kp.timer)
                        signal.alarm(7)

                        try:
                            # type in the user's PIN
                            pinArray = kp.KeyPadAuthor()

                            # function to check if user exists and if PIN is correct
                            flag = db.twoFactorAuth(ID, pinArray)

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

                pinArray = []
                while (holdID != None and holdID[0:5]!="02350"):
                    holdID = RPICardScan()


            except KeyboardInterrupt:
                print ("")
                TurnPowerOff()
                sys.exit(0)
        # turn off the power if it's been turned on
        TurnPowerOff()
