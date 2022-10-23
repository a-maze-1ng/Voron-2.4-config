# Resonance compensation with input shaper
## Comment out in printer.cfg
[input_shaper] -> comment out  

[printer]  
max_accel: 3500 -> comment out  

max_accel: 10000  -> add  
max_accel_to_decel: 10000 -> add  

## Home and QGL, Extruder position middle
```G32 ;QGL```  
```G1 X175 Y175 Z50 F2000 ;Extruder position in the middle of the printer```  

## ADXL probe
### Attach and check ADXL probe
```ACCELEROMETER_QUERY```

### Measure axis noise
```M106 S0 ;deactivate fan```  
```MEASURE_AXES_NOISE```  

-> below 100 values are good  
-> deactivate any fan!

### Test resonance  
```TEST_RESONANCES AXIS=X```  
```TEST_RESONANCES AXIS=Y```  
note the .csv  
e.g. /tmp/resonances_y_20221014_183905.csv  

### Connect to RPi via Putty  
```~/klipper/scripts/calibrate_shaper.py /tmp/resonances_x_20221023_194453.csv -o /tmp/shaper_calibrate_x.png```  
```~/klipper/scripts/calibrate_shaper.py /tmp/resonances_y_20221023_194742.csv -o /tmp/shaper_calibrate_y.png```  
Optional: download diagram (to be found in /tmp)  
