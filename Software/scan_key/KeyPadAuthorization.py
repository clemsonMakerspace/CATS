import sys
from getpass import *

# Global variables that determine which character to punch to accept or deny
correct_symbol = '*'
bad_symbol = '#'

class input_key_code:

	# initial function that runs first, asking for a number
	def __init__(self):
		print("Enter your PIN: ")
	
	# This function allows for the input to be hidden in terminal
	# if you want to see it, just uncomment the one below and comment the top
	def getinput(self):
# 		self.inn = getpass("")
# 		self.inn = raw_input()
		self.inn = input() # Use this if using python3
		return self.inn

# This function 
def loop(input, array, result, countflag):
	if countflag >= 1:
		print ("\nRe-enter key code: ")

	while result != correct_symbol:
		result = input.getinput()
		array.append(result)


if __name__ == '__main__':
	try:
		read = input_key_code()
		arr = []
		num = 0
		val = 1
		count = 0
		cflag = 0
		loop(read, arr, num, cflag)

		# this joins everything in the array 'arr' together without the ending symbol
		join = ''.join(arr)
		length = len(join)
		num1 = join[:length-1]
# 		print num1
		
		# if the bad_symbol is found in the string then re-enter your key code
		# returns a -1 if the symbol is not found, so we keep checking in the loop
		while num1.find(bad_symbol) != -1:
			print ("Found a bad character within the Key Code")
			print ("Before punching in the correct symbol")
			print ()
			print (">>> Character Found: " + bad_symbol)
			arr = []
			loop(read, arr, num, cflag+1)
			join = ''.join(arr)
			length = len(join)
			num1 = join[:length-1]
			
		# otherwise print out the key code as a string
		print (num1)
		print (arr)
	except KeyboardInterrupt:
		sys.exit(0)
		