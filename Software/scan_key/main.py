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
		flag = False
		# Ask for input from the RPI, if no input within __ seconds then quit
		ID = RPICardScan()
		holdID = ID
		while (ID == holdID and holdID != None and holdID[0:5] == "02350"):
			try:
				author = machineAuth(ID, cursor)
				if(author == True):
					break
				# if the PIN was incorrect then re-enter it
				if (flag == False):
					print("Enter PIN")
					# type in the user's PIN
					array = kp.KeyPadAuthor()

					# function to check if user exists and if PIN is correct
					flag = auth(ID, array, cursor)

				array = []
				holdID = RPICardScan()
				while (holdID != None and holdID[0:5]!="02350"):
					holdID = RPICardScan()

			except KeyboardInterrupt:
				print ("")
				cursor.close()
				cnx.close()
				sys.exit(0)
		# turn off the power if it's been turned on
		TurnPowerOff()

