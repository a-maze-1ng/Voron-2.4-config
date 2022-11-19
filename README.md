# Voron-2.4-config
## Tuning  
### Input shaper  
https://github.com/a-maze-1ng/Voron-2.4-config/blob/main/input_shaper.md  
### PID tuning  
```DO_PID_TUNE_EXTRUDER PID_TEMP=210```  

## Voron 2.4 hardware / software config
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
* Resource Monitor (disabel because of https://github.com/Renaud11232/OctoPrint-Resource-Monitor/issues/37)
* GPIO Control
* PrintJobHistory 
* Simple Emergency Stop
* Slicer Thumbnails
* Top Temp

## Macros
### Move to X175 Y175 Z150 if Z position is < 150 mm
* If the Z-position is below 150mm then move Extruder to the front (X = 175, Y = 50) and set the Z-position to 150 mm  
* If the Z-position is equal or larger than 150mm then move Extruder to the front (X = 175, Y = 50)  
* This macro prevents the extruder from sagging, which disturbs the QGL process  

```PRINT_END_POS```  

### Prepare for input shaping  
* Home, QGL, Move Extruder in the middle of the bed, turn off part cooling  

```PREPARE_FOR_INPUT_SHAPING```  

### Enable axis movement without homing, be carefull!
When locating the Z stop, Octoprint behaves a bit strangely (emergency shutdown)  
Therefore the X and Y axis are homed, then the kinematic position is set to a random Z value  
Finetuning with movement via Ocotprint is now possible without homing  
Be careful, you can run your nozzle into your bed!  
Following Gcode examples are for the V2.4! You might need to adjust everything to your system

```G28 X```  
```G28 Y```  
```SET_KINEMATIC_POSITION X=350 Y=350 Z=150```  

## Good websites
* https://klippylyzer.github.io/  
* https://docs.vorondesign.com/
