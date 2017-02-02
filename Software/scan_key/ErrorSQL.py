import sys
import datetime
import pymysql
import os
import smtplib
<<<<<<< HEAD
import subprocess
=======
import configparser
>>>>>>> 33e3e9b080b37e83a7885725c1d833188e315c07
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

def errorSQL(id, errMessage):
	config = configparser.RawConfigParser() #instantiate config reader
	config.read(os.path.join(os.path.abspath(os.path.dirname(__file__)), 'config.cfg')) #actually read the config file
	
    cnx = pymysql.connect(user=config.get('_sql', 'username'),
							password=config.get('_sql', 'password'),
							host=config.get('_sql','hostname'),
							database=config.get('_sql','database'),
							autocommit=True)

    cursor = cnx.cursor()

    currMachineIDname = subprocess.check_output(['hostname'])
    currMachineID = currMachineID.strip()

    if(id[0:5] == "02350"): #we should implement the facility code as a config as well
        cursor.execute("SELECT CUID, pin FROM USER WHERE t1String = " + id) #getting user w/ the id
        data = cursor.fetchone() #fetching data into array

        CUID = data[0][0] #and this is the cuid of the person with the id string
    else:
        CUID = id

    cursor.execute("""INSERT IGNORE INTO `CATS`.`EVENTS` (`UserID`,`MachineID`,`Timestamp`,`Status`)\
    VALUES (%s,%s,%s,%s)""" , (CUID, currMachineID[0], datetime.datetime.now(), str(errMessage)))


#    sendAdminEmail(errMessage)

    cursor.close()
    cnx.close()

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
