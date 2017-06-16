#########################################################################
#    USAGE: python3 main.py						#
#									#
#    MAKE SURE YOU USE PYTHON3 OTHERWISE YOU'RE GOING TO GET ERRORS!	#
#									#
#########################################################################

from keypad import *
from on_off import *
from rpiCardScan import *
import time
import sys
import pymysql
import datetime
import os

# auth: Function that searches the SQL database 
# 	for an existing user with the card string
# 		that was read and for the correct PIN that
# 	was entered

def machineAuth(id, cursor):
	os.system("hostname > tmp")
	currMachineID = open('tmp', 'r').read()
	currMachineID = currMachineID.split()

	cursor.execute("select machineID, machineType from MACHINE")

	data1 = cursor.fetchall()

	machineType = None

#	count = 1
#	print ("\tmachineID\tmachineType")
	for origMachineID in data1:
		if(origMachineID[0] == currMachineID[0]):
			machineType = origMachineID[1]
#			print (str(count) + ".\t" + str(origMachineID[0]) + '\t' + str(origMachineID[1]))
#			count = count + 1

	cursor.execute("SELECT auth1, auth2, auth3 FROM USER WHERE t1String = " + id) #getting user w/ the id

	authdata = cursor.fetchall()

	for auth in authdata:
#		print(str(auth[0])+' '+ str(auth[1])+' '+ str(auth[2]))

		if(auth[machineType] != 1):
			print ("USER IS NOT AUTHORIZED\n")
			return (True)

	os.system("rm tmp")

	return (currMachineID)
	
def auth(id, pin, cursor):
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

	pinTest = data[0][1] #should've reversed this and idTest for styling purposes but this is the pin for the person with the id string
	cuid = data[0][0] #and this is the cuid of the person with the id string

	currMachineID = machineAuth(id, cursor)

	if(pin==pinTest and character == '#'): #if the pin is good
		print("********** USER EXISTS AND PIN IS GOOD *********")
#		print("\tPIN: " + pinTest + '\t' + "CUID: " + cuid + '\n')
		cursor.execute("""INSERT INTO `CATS`.`EVENTS` (`MachineID`,`UserID`,`Status`,`Timestamp`)\
		VALUES (%s,%s,%s,%s)""" , (currMachineID, cuid, "1", datetime.datetime.now()))
		TurnPowerOn()
		return(True) #and return true. this is NOT including the different machine booleans. that should be implemented later though
	else:
		print("********** USER EXISTS | INCORRECT PIN *********")
		return(False) #if pin is invalid, then not allowed


#def main():
if __name__ == '__main__':

	# connecting to the SQL Server and Database
#	cnx = pymysql.connect(user='gacosta', password='9)q=2d-dz[4g', host='sbxmysql.clemson.edu', database='gacosta', autocommit=True)
	cnx = pymysql.connect(user='CATS', password='CATS', host='CATS-SQL.local', database='CATS', autocommit=True)
	
	cursor = cnx.cursor()
	
	# select the first and last name, the CUID, their Card String, and PIN from
	# the database
	cursor.execute("SELECT firstName, lastName, CUID, t1String, Pin FROM USER")
	data = cursor.fetchall()

#	print ("\tFirst\tLast\tCUID\t\tBuilding\tPIN")

	# initialize the keypad and important variables
#	count = 1
	
#	for row in data:
#		print (str(count) + ".\t" + str(row[0]) + '\t' + str(row[1]) + '\t' + str(row[2]) + ' \t' + str(row[3]) + '\t' + str(row[4]))
#		count = count + 1
	
        # initialize the keypad and important variables
	kp = keypad()
	ID = None; readpad = 0; join = 0; character = 0; length = 0;
	array = [];

	# While the same card is still being read then do the following:
	# ask for PIN and search the SQL database to find the user
	while True:
		flag = False
		# Ask for input from the RPI, if no input within __ seconds then quit
		ID = RPICardScan()
		holdID = ID
		while (ID == holdID and holdID != None and holdID[0:5] == "02350"):
			try:
				author = machineAuth(ID, cursor)
				if(author == True):
					break

				if (flag == False):
					print("Enter PIN")
					# type in the user's PIN
					array = kp.KeyPadAuthor()
#					print(array)
					# function to check if user exists and if PIN is correct
					flag = auth(ID, array, cursor)

				array = []
				holdID = RPICardScan()
				while (holdID != None and holdID[0:5]!="02350"):
					holdID = RPICardScan()
#				print(holdID)

			except KeyboardInterrupt:
				print ("")
				cursor.close()
				cnx.close()
				sys.exit(0)
		# turn off the power if it's been turned on
		TurnPowerOff()		
	
