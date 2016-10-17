import time 
import sys
import RPi.GPIO as io 
io.setmode(io.BCM) 
  
power_pin = 21
 
io.setup(power_pin, io.OUT)
io.output(power_pin, False)
 
while True:
	try:
	   print("POWER ON")
	   io.output(power_pin, True)
	   time.sleep(10);
	   print("POWER OFF")
	   io.output(power_pin, False)
	   time.sleep(5)
	except KeyboardInterrupt:
	   print("\nYou hit CTRL + C.\nPOWERING OFF AND EXITING. . .\n")
	   io.output(power_pin, False)
	   sys.exit(0)
