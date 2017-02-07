import sys
import configparser
import pymysql
import os
from AuthenticationSQL import *

def testAuthSQL():
    #machineAuth test
    #implement cursor
    id1 = "2350193059" #Add working id
    id2 = "2350207754" #Add nonworking id

    config = configparser.RawConfigParser()
    config.read(os.path.join(os.path.abspath(os.path.dirname(__file__)), 'config.cfg'))
    cnx = pymysql.connect(user = config.get('_sql', 'username'),\
                            password = config.get('_sql', 'password'),\
                            host = config.get('_sql', 'hostname'),\
                            database = config.get('_sql', 'database'),\
                            autocommit = True)
    cursor = cnx.cursor()

    assert(machineAuth(id1, cursor),True)
    assert(machineAuth(id2, cursor),False)
