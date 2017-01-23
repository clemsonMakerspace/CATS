from on_off import *
from ErrorSQL import *
import os
import pygame

def machineAuth(id, cursor):
    os.system("hostname > tmp")
    currMachineID = open('tmp', 'r').read()
    currMachineID = currMachineID.split()

    cursor.execute("select machineID, machineType from MACHINE")

    data1 = cursor.fetchall()

    machineType = None

    for origMachineID in data1:
        if(origMachineID[0] == currMachineID[0]):
            machineType = origMachineID[1]

    cursor.execute("SELECT auth1, auth2, auth3 FROM USER WHERE t1String = " + id) #getting user w/ the id

    authdata = cursor.fetchall()

    for auth in authdata:
        if(auth[machineType] != 1):
            print ("USER IS NOT AUTHORIZED\n")

            pygame.mixer.init()
            pygame.mixer.music.load("deny.wav")
            pygame.mixer.music.play()
            while pygame.mixer.music.get_busy() == True:
                continue

            errorSQL(id, 1)
            return (True)

    os.system("rm tmp")

    return (currMachineID)

# auth: Function that searches the SQL database
#       for an existing user with the card string
#       that was read and for the correct PIN that
#       was entered
# Function that authenticates user exists and if RFID is inserted and if their PIN is good
def twoFactorAuth(id, pin, cursor):
    pygame.mixer.init()

    # takes the PIN without the symbol at the end, which is the '#' symbol
    join = ''.join(pin)
    length = len(join)
    character = join[length-1:]
    pin = join[:length-1]

    #SELECT * FROM USER WHERE t1String = id; (base way of getting info)
    cursor.execute("SELECT CUID, pin FROM USER WHERE t1String = " + id) #getting user w/ the id
    data = cursor.fetchall() #fetching data into array

    if(len(data)==0): #if there is no user with that data
        print("********** USER DOES NOT EXIST *********")
        return(None) #no good

    pinTest = data[0][1] #this is the pin for the person with the id string
    cuid = data[0][0] #this is the cuid of the person with the id string

    currMachineID = machineAuth(id, cursor)

    if(pin==pinTest and character == '#'): #if the pin is good
        print("********** USER EXISTS AND PIN IS GOOD *********")
        cursor.execute("""INSERT INTO `CATS`.`EVENTS` (`MachineID`,`UserID`,`Status`,`Timestamp`)\
        VALUES (%s,%s,%s,%s)""" , (currMachineID, cuid, "Success", datetime.datetime.now()))

        pygame.mixer.music.load("successful.mp3")
        pygame.mixer.music.play()
        while pygame.mixer.music.get_busy() == True:
            TurnPowerOn()
            continue

#        TurnPowerOn()
        return(True)
    else:
        print("********** USER EXISTS | INCORRECT PIN *********")

        pygame.mixer.music.load("deny.wav")
        pygame.mixer.music.play()
        while pygame.mixer.music.get_busy() == True:
            return(False)
            continue
        
#        return(False) #if pin is invalid, then not allowed

# Function that authenticates if user exists only if the RFID card is inserted
def rfidAuth(id, cursor):
    cursor.execute("SELECT CUID, pin FROM USER WHERE t1String = " + id) #getting user w/ the id
    data = cursor.fetchall()

    if(len(data)==0): #if there is no user with that data
        print("********** USER DOES NOT EXIST *********")
        return(None) #no good
        
    cuid = data[0][0] #and this is the cuid of the person with the id string

    currMachineID = machineAuth(id, cursor)

    cursor.execute("""INSERT INTO `CATS`.`EVENTS` (`MachineID`,`UserID`,`Status`,`Timestamp`)\
    VALUES (%s,%s,%s,%s)""" , (currMachineID, cuid, "Success", datetime.datetime.now()))

    TurnPowerOn()

    return(True)

def getID(idString, cursor):
    cursor.execute("SELECT CUID, pin FROM USER WHERE t1String = " + idString) #getting user w/ the id
    data = cursor.fetchall() #fetching data into array

    cuid = data[0][0] #and this is the cuid of the person with the id string
    return cuid
