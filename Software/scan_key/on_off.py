import time 
import sys
import RPi.GPIO as io 
io.setmode(io.BCM) 
  
power_pin = 21
 
io.setup(power_pin, io.OUT)
io.output(power_pin, False)

# def PowerOnOff(ID, unchangedID):
# 		while (ID == unchangedID):
# 			try:
# 				io.output(power_pin, True)
# 
# 			except KeyboardInterrupt:
# 				print("\nPOWERING OFF AND EXITING. . .\n")
# 				io.output(power_pin, False)
# 				break
# 		io.output(power_pin, False)
		
def TurnPowerOff():
	io.output(power_pin, False)

def TurnPowerOn():
	io.output(power_pin, True)