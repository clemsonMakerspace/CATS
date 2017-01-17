import sys
import datetime
import pymysql
import os
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

def errorSQL(id, errMessage):
    cnx = pymysql.connect(user='CATS', password='CATS', host='192.168.1.2', database='CATS', autocommit=True)
    cursor = cnx.cursor()

    os.system("hostname > tmp")
    currMachineID = open('tmp', 'r').read()
    currMachineID = currMachineID.split()
    currMachineID = currMachineID[0:]

    if(id[0:5] == "02350"):
        cursor.execute("SELECT CUID, pin FROM USER WHERE t1String = " + id) #getting user w/ the id
        data = cursor.fetchall() #fetching data into array

        CUID = data[0][0] #and this is the cuid of the person with the id string
    else:
        CUID = id

    cursor.execute("""INSERT IGNORE INTO `CATS`.`EVENTS` (`UserID`,`MachineID`,`Timestamp`,`Status`)\
    VALUES (%s,%s,%s,%s)""" , (CUID, currMachineID[0], datetime.datetime.now(), str(errMessage)))

    os.system("rm tmp")


#    sendAdminEmail(errMessage)

    cursor.close()
    cnx.close()
    sys.exit(1)

#def sendAdminEmail(errMessage):
#    fromaddr = #put in address sending
#    toaddr = #put in address receiving
#    msg = MIMEMultipart()
#
#    msg['From'] = fromaddr
#    msg['To'] = toaddr
#    msg['Subject'] = "CATS Administration"
#
#    if(errMessage == 1):
#        body = "Status: %d\n\nERROR: User is not Authenticated to use the machine.\n\nAutomated Message, Do Not Reply." % errMessage
#    elif(errMessage == 2):
#        body = "Status: %d\n\nERROR: There is a problem with the machine. Software/Hardware Error.\n\nAutomated Message, Do Not Reply." % errMessage
#    elif(errMessage == 3):
#        body = "Status: %d\n\nERROR: Could not find the input device.\n\nAutomated Message, Do Not Reply." % errMessage
#
#    msg.attach(MIMEText(body, 'plain'))
#
#    server = smtplib.SMTP('smtp.gmail.com', 587)
#    server.starttls()
#    server.login(fromaddr, "*********")
#    text = msg.as_string()
#    server.sendmail(fromaddr, toaddr, text)
#    server.quit()
#********************************************************************************
#    toaddr2 = #put in your email addresss
#    msg2 = MIMEMultipart()
#
#    msg2['From'] = fromaddr
#    msg2['To'] = toaddr2
#    msg2['Subject'] = "CATS Administration"
#
#    if(errMessage == 1):
#        body = "Status: %d\n\nERROR: User is not Authenticated to use the machine.\n\nAutomated Message, Do Not Reply." % errMessage
#    elif(errMessage == 2):
#        body = "Status: %d\n\nERROR: There is a problem with the machine. Software/Hardware Error.\n\nAutomated Message, Do Not Reply." % errMessage
#    elif(errMessage == 3):
#        body = "Status: %d\n\nERROR: Could not find the input device.\n\nAutomated Message, Do Not Reply." % errMessage
#
#    msg2.attach(MIMEText(body, 'plain'))
#
#    server = smtplib.SMTP('smtp.gmail.com', 587)
#    server.starttls()
#    server.login(fromaddr, "******")
#    text = msg2.as_string()
#    server.sendmail(fromaddr, toaddr2, text)
#    server.quit()
