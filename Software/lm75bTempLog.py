import smbus
import datetime

bus = smbus.SMBus(1) # found via sudo i2cdetect -y 0 or -y 1

DEVICE_ADDRESS = 0x4f # found via sudo i2cdetect -y 0 or -y 1
TEMP_REGISTER = 0x00 # found on datasheet

# Read the Register

data = bus.read_i2c_block_data(DEVICE_ADDRESS, TEMP_REGISTER)

print("Time:", datetime.datetime.now())
print("Temp:", ((data[0] << 8 | data[1]) >> 5) * 0.125)
print()
# data[0] is most significant byte
# data[1] is least significant byte
# first 5 bits of LSB are 0 and should be ignored
# Resolution of 0.125*C

# If 7 bits of LSB are ignored then 0.5*C resolution
# If only MSB is used then 1.00*C resolution
