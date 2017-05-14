import datetime
import os
import subprocess
import pymysql
import configparser

class SQL():
    def __init__(self):
        config = configparser.RawConfigParser() #instantiate config reader
        config.read(os.path.join(os.path.abspath(os.path.dirname(__file__)), 'config.cfg')) #actually read the config file

        # Init SQL Connection
        self.cnx = pymysql.connect(user=config.get('_sql', 'username'),
            password=config.get('_sql', 'password'),
    		host=config.get('_sql','hostname'),
    		database=config.get('_sql','database'),
    		autocommit=True)

        self.cursor = cnx.cursor()

        # Init Machine Hostname
        self.catssn = subprocess.check_output(['hostname'])
        self.catssn = self.catssn.strip()
        self.catssn = (self.catssn).decode('UTF-8')

        # Init Machine 2FA code
        self.cursor.execute("SELECT mach2fa FROM machines WHERE catssn = '%s'" % self.catssn)
        self.data = self.cursor.fetchone() #fetching data into array
        self.mach2fa = self.data[0] #this is the 2FA Bool for the machine

    def __del__(self):
        self.cursor.close()
        self.cnx.close()

    def getMachineID(self):
        return(self.catssn)

    def getMachineOPT(self):
        return (self.mach2fa)

    def eventLog(self, t1String, status):
        if(id[0:5] == "02350"): #we should implement the facility code as a config as well
            self.cuid = getCUID(t1String) #getting user w/ thet1String
        else:
            self.cuid = t1String

            self.cursor.execute("""INSERT IGNORE INTO `catsadmin`.`events` (`machineID`,`userID`,`status`, `t`)\
            VALUES (%s,%s,%s,%s)""" , (self.catssn, self.cuid, status, datetime.datetime.now(),))

    def setMachAuth(self, t1String):
        self.cursor.execute("SELECT authType FROM machines WHERE catssn = '%s'" % self.catssn)
        self.authType = self.cursor.fetchone()

        try:
            self.cursor.execute("SELECT " + self.authType[0] + " FROM users WHERE t1String = " + t1String) #getting user w/ thet1String    #might need to modify
            self.authData = self.cursor.fetchone()
        except TypeError:
            self.cuid = self.getID()
            self.cursor.execute("""INSERT IGNORE INTO `catsadmin`.`events` (`machineID`,`userID`,`status`, `t`)\
            VALUES (%s,%s,%s,%s)""" , (self.catssn, self.cuid, "5", datetime.datetime.now(),))
            sys.exit(0)

        if(self.authData == None):
            print("********** USER DOES NOT EXIST *********")
            self.statusLog(t1String, 1)
            return(True)

        # USER IS NOT AUTHORIZED
        if(self.authData[0] == 0):
            self.statusLog(t1String, 1)
            return(True)

        return (self.authData)

    # twoFactorAuth: Function that searches the SQL database
    #       for an existing user with the card string
    #       that was read and for the correct PIN that
    #       was entered
    def twoFactorAuth(self, t1String, pin):
        # takes the PIN without the symbol at the end, which is the '#' symbol
        self.join = ''.join(pin)
        self.length = len(self.join)
        self.character = join[self.length-1:]
        self.pin = join[:self.length-1]
        self.pin = int(self.pin)

        #SELECT * FROM USER WHERE t1String =t1String; (base way of getting info)
        self.cursor.execute("SELECT cuid, pin FROM users WHERE t1String = " +t1String) #getting user w/ thet1String
        self.data = self.cursor.fetchone() #fetching data into array

        self.pinTest = self.data[1] #this is the pin for the person with thet1String string
        self.cuid = self.data[0] #this is the cuid of the person with thet1String string

        if(self.pin==self.pinTest and self.character == '#'): #if the pin is good
            print("********** USER EXISTS AND PIN IS GOOD *********")
            self.cursor.execute("""INSERT IGNORE INTO `catsadmin`.`events` (`machineID`,`userID`,`status`, `t`)\
            VALUES (%s,%s,%s,%s)""" , (self.catssn, self.cuid, "0", datetime.datetime.now(),))

            TurnPowerOn()
            return(True)
        else:
            print("********** USER EXISTS | INCORRECT PIN *********")

            return(False) #if pin is invalid, then not allowed

    def getCUID(self, t1String):
        self.cursor.execute("SELECT cuid FROM users WHERE t1String = " + t1String) #getting user w/ thet1String
        self.data = self.cursor.fetchone() #fetching data into array
        self.cuid = self.data[0] #and this is the cuid of the person with thet1String string
        return (self.cuid)

    def getUser2FA(self, t1String):
        self.cursor.execute("SELECT user2fa FROM users WHERE t1String = " + t1String) #getting user w/ the opt$
        self.data = self.cursor.fetchone() #fetching data into array
        self.opt = self.data[0] #this is the optional number for the user
        return (self.opt)

    def check2FA(self, user2fa, mach2fa):
        if(mach2fa == 2 or (mach2fa == 1 and user2fa == 1)):
            return(False)
        else:
            TurnPowerOn()
            return(True)
