import string

from evdev import InputDevice
from select import select

def RPICardScan():
	keys = "X^1234567890XXXXqwertzuiopXXXXasdfghjklXXXXXyxcvbnmXXXXXXXXXXXXXXXXXXXXXXX"
	#keys = "X^1234567890XXXXqwertzuiopXXXXasdfghjklXXXXXyxcvbnmXXXXXXXXXXXXXXXXXXXXXXX"
	dev = InputDevice('/dev/input/by-id/usb-RFIDeas_USB_Keyboard-event-kbd')
	arr = []
	while True:
		r,w,x = select([dev], [], [])
		for event in dev.read():
			if event.type==1 and event.value==1:
				arr.append(keys[event.code])
				#print( keys[ event.code ] )
#		print (arr)
		if(len(arr) == 12):
			break

	length = len(arr)
	join1 = arr[:length-1]
	join1 = ''.join(join1)
	return (join1)

#RPICardScan()
