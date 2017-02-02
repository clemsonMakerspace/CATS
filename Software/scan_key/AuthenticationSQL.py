from on_off import *
from ErrorSQL import *
import os
import subprocess

def machineAuth(id, cursor):
    currMachineID = subprocess.check_output(['hostname'])
    name = name.strip()

    cursor.execute("select machineID, machineType FROM MACHINE WHERE t1String = " + id)

    data1 = cursor.fetchone()

    machineType = None
    
    for origMachineID in data1:
        if(origMachineID[0] == currMachineID):
            machineType = origMachineID[1]

    cursor.execute("SELECT auth1, auth2, auth3 FROM USER WHERE t1String = " + id) #getting user w/ the id

    authdata = cursor.fetchone()

    for auth in authdata:
        if(auth[machineType] != 1):
            print ("USER IS NOT AUTHORIZED\n")
            os.system("omxplayer deny.wav &")
            errorSQL(id, 1)
            return (True)

    return (currMachineID)

# twoFactorAuth: Function that searches the SQL database
#       for an existing user with the card string
#       that was read and for the correct PIN that
#       was entered
# Function that authenticates user exists and if RFID is inserted and if their PIN is good
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
        print("********** USER DOES NOT EXIST *********")
        os.system("omxplayer deny.wav &")
        return(None) #no good

    pinTest = data[0][1] #this is the pin for the person with the id string
    cuid = data[0][0] #this is the cuid of the person with the id string

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

    cuid = data[0][0] #and this is the cuid of the person with the id string
    return cuid
