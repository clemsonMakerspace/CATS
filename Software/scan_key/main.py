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
    config = configparser.RawConfigParser() #instantiate config reader
    config.read(os.path.join(os.path.abspath(os.path.dirname(__file__)), 'config.cfg')) #actually read the config file

    cnx = pymysql.connect(user=config.get('_sql', 'username'),
                                                        password=config.get('_sql', 'password'),
                                                        host=config.get('_sql','hostname'),
                                                        database=config.get('_sql','database'),
                                                        autocommit=True)

    cursor = cnx.cursor()

    # initialize the keypad and important variables
    kp = keypad()
    ID = None; readpad = 0; join = 0; character = 0; length = 0;
    array = [];

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
                author = machineAuth(ID, cursor)
                # USER IS NOT AUTHORIZED SO PUT IN ID AGAIN
                if (author == True):
                    break
                    
                # Loop that prompts if the PIN was incorrect then re-enter it
                while (flag == False):
                    blinkKey2()
                    
                    # Get User Optional PIN
                    opt = getOPT(holdID, cursor)
                    # Get Machine Optional PIN
                    mopt = getMachineOPT(cursor)
                    # Check if the user needs to put in PIN or not
                    check_opt = checkOPT(opt, mopt)
                    
                    # Passes through if user does not need PIN
                    # Otherwise, ask the user for a PIN
                    if (check_opt == True):
                        flag = True
                        break
                    else:
                        array = None
                        # if the user has attempted their PIN 3 times then quit
                        if (count == 3):
                            CUID = getID(holdID, cursor)
                            errorSQL(CUID, 4)
                            break

                        count = count + 1

                        # interrupt handler that sets a timer in the background
                        signal.signal(signal.SIGALRM, kp.timer)
                        signal.alarm(7)

<<<<<<< HEAD
                        # function to check if user exists and if PIN is correct
                        flag = twoFactorAuth(ID, array, cursor)
=======
                        try:
                            # type in the user's PIN
                            array = kp.KeyPadAuthor()
>>>>>>> clemsonMakerspace/devel

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
                TurnPowerOff()
                sys.exit(0)
        # turn off the power if it's been turned on
        TurnPowerOff()

