import sys

# Get ID number
def scanCard():
# 	origID = raw_input('Type in your ID number \n') # python 2
	origID = input('Type in your ID number \n') # python 3
	print(origID)

	#Remove building code for card number
	idNumber = origID[4:]
	print(idNumber)
	
	return (origID)
