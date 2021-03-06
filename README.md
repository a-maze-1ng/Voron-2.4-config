# Voron-2.4-config
## Current Voron 2.4 config
* Bigtreetech Smart Filament Sensor  
* Klicky Probe  
  * Auto Z-Calibration  
* Orbiter 2.0  
* Stealthburner  
* Phaetus Dragon High Flow Hot-End with 0.4 mm Bondtech CHT Nozzle  
* PEI Magnetic Sheet  
* IKEA Dry Box (https://www.printables.com/model/32225-filament-dry-box)  
* Masterspool Refill System (https://www.myminifactory.com/object/3d-print-universal-spool-twist-and-lock-158373)  
* Klipper Mod - drop_first_result:true (https://github.com/a-maze-1ng/Voron-2.4-config/blob/main/klipper_mods/klipper%20mod%20-%20drop_first_result.md)
  * ```wget https://github.com/a-maze-1ng/Voron-2.4-config/blob/main/klipper_mods/install_drop_first_result.sh```
  * ```sudo chmod +x install_drop_first_result.sh```
  * ```bash install_drop_first_result.sh```  

--  
no warranty for website links or mods - use at own risk

## Octoprint
Im running Octoprint with OctoKlipper plugin. 
Why?  
* I want to turn on and off my machine via Telegram / automatic after a print is finished
* track the printer stats
* control GPIOs of the RPi via the GUI interface

### Plugins  
* OctoKlipper
* PSU Control
* Telegram Notifications
* Plotly Temp Graph
* Print Job History
* Printer Stats
* Resource Monitor
* GPIO Control
* PrintJobHistory 
* Simple Emergency Stop
* Slicer Thumbnails
* Top Temp

## Own macros
# PID tuning
```DO_PID_TUNE_EXTRUDER PID_TEMP=210```  
# Move to X175 Y175 Z150 if Z position is < 150 mm
```PRINT_END_POS```  
