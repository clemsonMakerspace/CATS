import sys

# Get ID number
def scanCard():
    origID = input('Type in your ID number \n')
    print(origID)

    #Remove building code for card number
    idNumber = origID[4:]
    print(idNumber)


#scanCard()

if __name__ == '__main__':
    try:
        while True:
            scanCard()
    except KeyboardInterrupt:
        print ("very niceee")
        sys.exit(0)
