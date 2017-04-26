import sys
import configparser
import pymysql
import os
from AuthenticationSQL import *
from nose.tools import *

def testMachineAuth():
    #machineAuth test
    #implement cursor


    config = configparser.RawConfigParser()
    config.read(os.path.join(os.path.abspath(os.path.dirname(__file__)), 'config.cfg'))

    id1 = config.get('_test', 'id1') #Add working id
    id2 = config.get('_test', 'id2') #Add nonworking id

    cnx = pymysql.connect(user = config.get('_sql', 'username'),\
                            password = config.get('_sql', 'password'),\
                            host = config.get('_sql', 'hostname'),\
                            database = config.get('_sql', 'database'),\
                            autocommit = True)
    cursor = cnx.cursor()

    assert(machineAuth(id1, cursor),True)
    assert(machineAuth(id2, cursor),False)

def testAuth():
    config = configparser.RawConfigParser()
    config.read(os.path.join(os.path.abspath(os.path.dirname(__file__)), 'config.cfg'))

    id1 = config.get('_test', 'id1')
    id2 = config.get('_test', 'id2')
    pin1 = config.get('_test', 'pin1')
    pin2 = config.get('_test', 'pin2')

    cnx = pymysql.connect(user = config.get('_sql', 'username'),\
                            password = config.get('_sql', 'password'),\
                            host = config.get('_sql', 'hostname'),\
                            database = config.get('_sql', 'database'),\
                            autocommit = True)
    cursor = cnx.cursor()

    assert(auth(id1,pin1,cursor), True)
    assert(auth(id2,pin2,cursor), False)

def testGetID():
    config = configparser.RawConfigParser()
    config.read(os.path.join(os.path.abspath(os.path.dirname(__file__)), 'config.cfg'))

    id1 = config.get('_test', 'id1')
    id2 = config.get('_test', 'id2')
    cuid1 = config.get('_test', 'cuid1')
    cuid2 = config.get('_test', 'cuid2')

    cnx = pymysql.connect(user = config.get('_sql', 'username'),\
                            password = config.get('_sql', 'password'),\
                            host = config.get('_sql', 'hostname'),\
                            database = config.get('_sql', 'database'),\
                            autocommit = True)
    cursor = cnx.cursor()

    assert(getID(id1,cursor),cuid1)
    assert(getID(id2,cursor),cuid2)
