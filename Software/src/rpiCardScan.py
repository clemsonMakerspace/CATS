import string
import sys
from evdev import InputDevice
from select import select
#import the function from the ErrorSQL.py file
import sql

def RPICardScan():
    db = sql.SQL()

    keys = "X^1234567890XXXXqwertzuiopXXXXasdfghjklXXXXXyxcvbnmXXXXXXXXXXXXXXXXXXXXXXX"
    try:
        dev = InputDevice('/dev/input/by-id/usb-RFIDeas_USB_Keyboard-event-kbd')
    except:
        print("\n --------------------------------- \n")
        print("ERROR: Could not find the input device!")
        db.eventLog("N/A", 3)
        # sys.exit(1)
    arr = []
    while True:
        # r - wait until ready for reading
        # w - wait until ready for writing
        # x - wait for an  'exception condition'
        # select([],[],[], timeToWaitforInput)
        r,w,x = select([dev], [], [], .525)
        if(r):
            for event in dev.read():
                if event.type==1 and event.value==1:
                    arr.append(keys[event.code])

            if(len(arr) == 12):
                length = len(arr)
                join1 = arr[:length-1]
                join1 = ''.join(join1)
                return (join1)

        else:
            return None
