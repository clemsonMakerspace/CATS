import time 
import sys
import RPi.GPIO as io 
io.setmode(io.BCM) 
  
power_pin = 21
 
io.setup(power_pin, io.OUT)
io.output(power_pin, False)

def PowerOnOff():
	read = input("Enter 1 to turn ON: ")
	if(read == '1'):
	#	seconds = input("How many seconds? ")
		while True:
			try:
				if(read == '1'):
	#				print("POWER ON")
					io.output(power_pin, True)
	#				time.sleep(float(seconds));
	# 		  	print("POWER OFF")
	# 		  	io.output(power_pin, False)
	# 		  	time.sleep(5)

			except KeyboardInterrupt:
				print("\nPOWERING OFF AND EXITING. . .\n")
				io.output(power_pin, False)
	# 			sys.exit(0)
				break
