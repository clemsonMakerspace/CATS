#########################################################################
#    USAGE: python3 main.py						#
#									#
#    MAKE SURE YOU USE PYTHON3 OTHERWISE YOU'RE GOING TO GET ERRORS!	#
#									#
#########################################################################

#from scanCard import *
from keypad import *
from on_off import *
from rpiCardScan import *
import time
import sys

def authorization(symbol, CUID, holdID):
#	if(symbol == '#' or CUID != None):	
#		PowerOnOff(ID, holdI)
	TurnPowerOn()

if __name__ == '__main__':
	array = []
	kp = keypad()
	ID = None; readpad = 0; join = 0; character = 0; length = 0

	ID = RPICardScan()
	holdID = ID
	while (RPICardScan() == holdID):
		try:			
			print (ID + " | " + holdID)
			TurnPowerOn()
#			authorization(None, ID, holdID)

# 			array = kp.KeyPadAuthor()
# 
# 			print (array)
# 			join = ''.join(array)
# 			length = len(join)
# 			character = join[length-1:]
# 
# 			authorization(character, ID, holdID)
# 
# 			array = []
			
		except KeyboardInterrupt:
			sys.exit(0)
			
	TurnPowerOff()		
	
