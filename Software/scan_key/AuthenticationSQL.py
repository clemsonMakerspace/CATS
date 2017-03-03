from on_off import *
import ErrorSQL as err
import os
import subprocess

def machineAuth(id, cursor):
    currMachineID = getMachineID()

    cursor.execute("SELECT authType FROM MACHINE WHERE PiHostname = '%s'" % currMachineID)
    authType = cursor.fetchone()

    cursor.execute("SELECT " + authType[0] + " FROM USER WHERE t1String = " + id) #getting user w/ the id    #might need to modify
    authdata = cursor.fetchone()
    
    if(authdata == None):
        print("********** USER DOES NOT EXIST *********")
        return(True)

    # USER IS NOT AUTHORIZED
    if(authdata[0] == 0):
        err.errorSQL(id, 1)
        return(True)    

    return (authdata)

# twoFactorAuth: Function that searches the SQL database
#       for an existing user with the card string
#       that was read and for the correct PIN that
#       was entered

def twoFactorAuth(id, pin, cursor):
    # takes the PIN without the symbol at the end, which is the '#' symbol
    join = ''.join(pin)
    length = len(join)
    character = join[length-1:]
    pin = join[:length-1]

    #SELECT * FROM USER WHERE t1String = id; (base way of getting info)
    cursor.execute("SELECT CUID, pin FROM USER WHERE t1String = " + id) #getting user w/ the id
    data = cursor.fetchone() #fetching data into array

    pinTest = data[1] #this is the pin for the person with the id string
    cuid = data[0] #this is the cuid of the person with the id string

    if(pin==pinTest and character == '#'): #if the pin is good
        os.system("omxplayer successful.mp3 &")
        print("********** USER EXISTS AND PIN IS GOOD *********")
        currMachineID = getMachineID()

        #this is broken, currMachineID is screwed up
        # G - I agree. Everytime it gets to here, the program will not get to TurnPowerOn function or return True
        # Although, if I were to comment these SQL lines, it works perfectly fine!
        # ---------------- NEED TO DEBUG -----------------
#        cursor.execute("""INSERT IGNORE INTO `CATS`.`EVENTS` (`MachineID`,`UserID`,`Status`,`Timestamp`)\
#        VALUES (%s,%s,%d,%s)""" , (currMachineID, cuid, 0, datetime.datetime.now()))
        # ---------------- NEED TO DEBUG -----------------

        TurnPowerOn()
        return(True)
    else:
        os.system("omxplayer deny.wav &")
        
        print("********** USER EXISTS | INCORRECT PIN *********")
        
        return(False) #if pin is invalid, then not allowed

def getID(idString, cursor):
    cursor.execute("SELECT CUID FROM USER WHERE t1String = " + idString) #getting user w/ the id
    data = cursor.fetchone() #fetching data into array
    cuid = data[0] #and this is the cuid of the person with the id string
    return cuid

def getMachineID():
    currMachineID = subprocess.check_output(['hostname'])
    currMachineID = currMachineID.strip()
    currMachineID = (currMachineID).decode('UTF-8')
    return(currMachineID)

def getOPT(idString, cursor):
    cursor.execute("SELECT user2fa FROM USER WHERE t1String = " + idString) #getting user w/ the opt$
    data = cursor.fetchone() #fetching data into array
    opt = data[0] #this is the optional number for the user
    return opt

def getMachineOPT(cursor):
    host = getMachineID()
    cursor.execute("SELECT mach2fa FROM MACHINE WHERE PiHostname = '%s'" % host)
    data = cursor.fetchone() #fetching data into array
    mopt = data[0] #this is the optional number from the machine
    return mopt

def checkOPT(opt, mid):
    if(mid == 2 or (mid == 1 and opt == 1)):
        return(False)
    else:
        TurnPowerOn()
        return(True)

