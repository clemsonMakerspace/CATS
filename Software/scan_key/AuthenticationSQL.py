from on_off import *
from ErrorSQL import *
import os
import subprocess

def machineAuth(id, cursor):
    currMachineID = subprocess.check_output(['hostname'])
    currMachineID = currMachineID.strip()
    currMachineID = b(currMachineID).decode('UTF-8')

    cursor.execute("SELECT machineType FROM MACHINE WHERE machineID = " + currMachineID)
    
    machineType = cursor.fetchone()

    cursor.execute("SELECT auth1, auth2, auth3 FROM USER WHERE t1String = " + id) #getting user w/ the id    #might need to modify

    authdata = cursor.fetchone()


    return (currMachineID)

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

    if(len(data)==0): #if there is no user with that data
        print("********** USER DOES NOT EXIST *********")   ###Needs sound
        return(None) #no good

    pinTest = data[1] #this is the pin for the person with the id string
    cuid = data[0] #this is the cuid of the person with the id string

    currMachineID = machineAuth(id, cursor)

    if(pin==pinTest and character == '#'): #if the pin is good
        os.system("omxplayer successful.mp3 &")
        
        print("********** USER EXISTS AND PIN IS GOOD *********")
        
        cursor.execute("""INSERT INTO `CATS`.`EVENTS` (`MachineID`,`UserID`,`Status`,`Timestamp`)\
        VALUES (%s,%s,%s,%s)""" , (currMachineID, cuid, "Success", datetime.datetime.now()))
        
        TurnPowerOn()
        
        return(True)
    else:
        os.system("omxplayer deny.wav &")
        
        print("********** USER EXISTS | INCORRECT PIN *********")
        
        return(False) #if pin is invalid, then not allowed

def getID(idString, cursor):
    cursor.execute("SELECT CUID, pin FROM USER WHERE t1String = " + idString) #getting user w/ the id
    data = cursor.fetchone() #fetching data into array

    cuid = data[0] #and this is the cuid of the person with the id string
    return cuid
