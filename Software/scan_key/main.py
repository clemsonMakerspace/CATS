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
import sys

def authorization(symbol, CUID):
	if(symbol == '#' or CUID != None):	
		PowerOnOff()


if __name__ == '__main__':
	array = []
	kp = keypad()
	ID = None; readpad = 0; join = 0; character = 0; length = 0

	while True:
		try:
			readin = input("Enter 1 for Card Scan | Enter 2 for KeyPad: ")
			
			if(readin == '1'):
				ID = RPICardScan()
				print (ID)
				authorization(None, ID)

			elif(readin == '2'):
				array = kp.KeyPadAuthor()

				print (array)
				join = ''.join(array)
				length = len(join)
				character = join[length-1:]

				authorization(character, None)

				array = []
			
		except KeyboardInterrupt:
			sys.exit(0)
