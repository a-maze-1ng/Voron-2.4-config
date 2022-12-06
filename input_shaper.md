# Resonance compensation with input shaper
## 1. Comment out in printer.cfg
[input_shaper] -> comment out  

[printer]  
max_accel: 3500 -> comment out  

max_accel: 10000  -> add  
max_accel_to_decel: 10000 -> add  

## 2. Home and QGL, Extruder position middle
```PREPARE_FOR_INPUT_SHAPING```  

## 3. Attach and check ADXL probe
```ACCELEROMETER_QUERY```

## 4. Measure axis noise
```MEASURE_AXES_NOISE```  

-> below 100 values are good  
-> deactivate any fan!

## 5. Test resonance  
```TEST_RESONANCES AXIS=X```  
```TEST_RESONANCES AXIS=Y```  
note the .csv  
e.g. /tmp/resonances_y_20221014_183905.csv  

## 6. Connect to RPi via Putty  
```~/klipper/scripts/calibrate_shaper.py /tmp/resonances_x_20221119_162109.csv -o /tmp/shaper_calibrate_x.png```  
```~/klipper/scripts/calibrate_shaper.py /tmp/resonances_y_20221119_162956.csv -o /tmp/shaper_calibrate_y.png```  
Optional: download diagram (to be found in /tmp)  
