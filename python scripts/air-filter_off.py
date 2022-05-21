#!/usr/bin/python
import time
import os
import RPi.GPIO as GPIO
GPIO.setmode(GPIO.BCM) # GPIO Nummern statt Board Nummern
GPIO.setwarnings(False)

RELAIS_1_GPIO = 18
GPIO.setup(RELAIS_1_GPIO, GPIO.OUT) # GPIO Modus zuweisen
GPIO.output(RELAIS_1_GPIO, GPIO.LOW) # aus
os.system('echo air filter off')
