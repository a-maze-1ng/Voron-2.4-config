#!/usr/bin/python
import time
import os

def _countdown(i):
 while i > 0:
  time.sleep(1)
  if(i % 5) == 0:
   os.system('echo sleep '+str(i)+' sec')
  i = i - 1

os.system('sudo service klipper restart')
os.system('echo ')
os.system('echo restart klipper service...')

i =  15
_countdown(i)
os.system('echo FIRMWARE_RESTART > /tmp/printer')

os.system('echo ')
os.system('echo FIRMWARE_RESTART...')

i = 10
_countdown(i)
os.system('echo RESTART > /tmp/printer')
os.system('echo ')
os.system('echo RESTART...')

i = 10
_countdown(i)
os.system('echo STATUS_READY > /tmp/printer')
#os.system('echo _set_nozzle_leds green=1 > /tmp/printer')
#os.system('echo _set_logo_leds green=1 > /tmp/printer')
os.system('echo ')
os.system('echo FERTIG !')
