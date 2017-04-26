from on_off import *
import ErrorSQL as err
import datetime
import os
import subprocess

def machineAuth(id, cursor):
    currMachineID = getMachineID()

    cursor.execute("SELECT authType FROM machines WHERE mname = '%s'" % currMachineID)
    authType = cursor.fetchone()

<<<<<<< HEAD
<<<<<<< HEAD
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
            os.system("omxplayer deny.wav &")
            errorSQL(id, 1)
            return (True)
=======
=======
>>>>>>> clemsonMakerspace/devel
    cursor.execute("SELECT " + authType[0] + " FROM users WHERE t1String = " + id) #getting user w/ the id    #might need to modify
    authdata = cursor.fetchone()
    
    if(authdata == None):
        print("********** USER DOES NOT EXIST *********")
        return(True)
<<<<<<< HEAD
>>>>>>> clemsonMakerspace/devel
=======
>>>>>>> clemsonMakerspace/devel

    # USER IS NOT AUTHORIZED
    if(authdata[0] == 0):
        err.errorSQL(id, 1)
        return(True)    

    return (authdata)

# twoFactorAuth: Function that searches the SQL database
#       for an existing user with the card string
#       that was read and for the correct PIN that
#       was entered
# Function that authenticates user exists and if RFID is inserted and if their PIN is good
def twoFactorAuth(id, pin, cursor):

<<<<<<< HEAD
<<<<<<< HEAD
=======
def twoFactorAuth(id, pin, cursor):
>>>>>>> clemsonMakerspace/devel
=======
def twoFactorAuth(id, pin, cursor):
>>>>>>> clemsonMakerspace/devel
    # takes the PIN without the symbol at the end, which is the '#' symbol
    join = ''.join(pin)
    length = len(join)
    character = join[length-1:]
    pin = join[:length-1]
    pin = int(pin)

    #SELECT * FROM USER WHERE t1String = id; (base way of getting info)
<<<<<<< HEAD
<<<<<<< HEAD
    cursor.execute("SELECT CUID, pin FROM USER WHERE t1String = " + id) #getting user w/ the id
    data = cursor.fetchall() #fetching data into array

    if(len(data)==0): #if there is no user with that data
        print("********** USER DOES NOT EXIST *********")
        os.system("omxplayer deny.wav &")
        return(None) #no good

    pinTest = data[0][1] #this is the pin for the person with the id string
    cuid = data[0][0] #this is the cuid of the person with the id string

    currMachineID = machineAuth(id, cursor)
=======
=======
>>>>>>> clemsonMakerspace/devel
    cursor.execute("SELECT cuid, pin FROM users WHERE t1String = " + id) #getting user w/ the id
    data = cursor.fetchone() #fetching data into array
   
    pinTest = data[1] #this is the pin for the person with the id string
    cuid = data[0] #this is the cuid of the person with the id string
<<<<<<< HEAD
>>>>>>> clemsonMakerspace/devel
=======
>>>>>>> clemsonMakerspace/devel

    if(pin==pinTest and character == '#'): #if the pin is good
        os.system("omxplayer successful.mp3 &")

        print("********** USER EXISTS AND PIN IS GOOD *********")
<<<<<<< HEAD
<<<<<<< HEAD

        cursor.execute("""INSERT INTO `CATS`.`EVENTS` (`MachineID`,`UserID`,`Status`,`Timestamp`)\
        VALUES (%s,%s,%s,%s)""" , (currMachineID, cuid, "Success", datetime.datetime.now()))

        TurnPowerOn()

=======
=======
>>>>>>> clemsonMakerspace/devel
        currMachineID = getMachineID()

        cursor.execute("""INSERT IGNORE INTO `catsadmin`.`etype` (`id`,`userial`,`eventtype`,`t`, 'catssn`)\
        VALUES (%s,%s,%s,%s)""" , (currMachineID, cuid, "0", datetime.datetime.now(), "Giandre"))

        TurnPowerOn()
<<<<<<< HEAD
>>>>>>> clemsonMakerspace/devel
=======
>>>>>>> clemsonMakerspace/devel
        return(True)
    else:
        os.system("omxplayer deny.wav &")

        print("********** USER EXISTS | INCORRECT PIN *********")
        
        return(False) #if pin is invalid, then not allowed

def getID(idString, cursor):
    cursor.execute("SELECT cuid FROM users WHERE t1String = " + idString) #getting user w/ the id
    data = cursor.fetchone() #fetching data into array
    cuid = data[0] #and this is the cuid of the person with the id string
    return (cuid)

def getMachineID():
    currMachineID = subprocess.check_output(['hostname'])
    currMachineID = currMachineID.strip()
    currMachineID = (currMachineID).decode('UTF-8')
    return(currMachineID)

def getOPT(idString, cursor):
    cursor.execute("SELECT user2fa FROM users WHERE t1String = " + idString) #getting user w/ the opt$
    data = cursor.fetchone() #fetching data into array
    opt = data[0] #this is the optional number for the user
    return (opt)

def getMachineOPT(cursor):
    host = getMachineID()
    cursor.execute("SELECT mach2fa FROM machines WHERE mname = '%s'" % host)
    data = cursor.fetchone() #fetching data into array
    mopt = data[0] #this is the optional number from the machine
    return (mopt)

def checkOPT(opt, mid):
    if(mid == 2 or (mid == 1 and opt == 1)):
        return(False)
    else:
        TurnPowerOn()
        return(True)

