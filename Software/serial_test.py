import serial
import time as t

ser = serial.Serial('/dev/serial0',9600)
while True:
	t.sleep(3)
	ser.write(b'l')
	t.sleep(7)
	ser.write(b'e')

