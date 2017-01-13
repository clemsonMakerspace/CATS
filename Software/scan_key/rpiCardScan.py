import string
import sys
from evdev import InputDevice
from select import select
#import the function from the ErrorSQL.py file
from ErrorSQL import *

def RPICardScan():
	keys = "X^1234567890XXXXqwertzuiopXXXXasdfghjklXXXXXyxcvbnmXXXXXXXXXXXXXXXXXXXXXXX"
	try:
		dev = InputDevice('/dev/input/by-id/usb-RFIDeas_USB_Keyboard-event-kbd')
	except:
		print ("\n ------------------ \nERROR: Could not find the input device!")
		errorSQL("N/A", 3)
#		sys.exit(1)
	arr = []
	while True:
# r - wait until ready for reading
# w - wait until ready for writing
# x - wait for an  'exception condition'
		r,w,x = select([dev], [], [], 2)
		if(r):
			for event in dev.read():
				if event.type==1 and event.value==1:
					arr.append(keys[event.code])
	#				print( keys[ event.code ] )

			if(len(arr) == 12):
				length = len(arr)
				join1 = arr[:length-1]
				join1 = ''.join(join1)
				#print (join1)
				return (join1)
		else:
			return None
