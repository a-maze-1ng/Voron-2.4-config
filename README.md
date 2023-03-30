# Voron-2.4-config
## Tuning  

### Install a Raspberry Pi as a secondary MCU (Klipper)  
https://github.com/a-maze-1ng/Voron-2.4-config/blob/main/RPi_as_Klipper_MCU.md  

### Input shaper  
https://github.com/a-maze-1ng/Voron-2.4-config/blob/main/input_shaper.md  

### PID tuning  
```DO_PID_TUNE_EXTRUDER PID_TEMP=210```  

### Ultimate Printer Tuning Guide by Andrew Ellis  
https://ellis3dp.com/Print-Tuning-Guide/  

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

## Voron 2.4 Mods

### installed  
* https://www.printables.com/model/172368-voron-24-filament-latch-or-any-2020-extrusion  
* https://github.com/Ramalama2/Voron-2-Mods/tree/main/Front_Idlers  
* https://github.com/VoronDesign/VoronUsers/tree/master/printer_mods/hartk1213/Voron2.4_Trident_Pins_Mod  

### future project  
* https://github.com/VoronDesign/VoronUsers/tree/master/printer_mods/hartk1213/Voron2.4_GE5C  

## Macros
### Move to X175 Y175 Z150 if Z position is < 150 mm
* If the Z-position is below 150mm then move Extruder to the front (X = 175, Y = 50) and set the Z-position to 150 mm  
* If the Z-position is equal or larger than 150mm then move Extruder to the front (X = 175, Y = 50)  
* This macro prevents the extruder from sagging, which disturbs the QGL process  

```PRINT_END_POS```  

### Prepare for input shaping  
* Home, QGL, Move Extruder in the middle of the bed, turn off part cooling  

```PREPARE_FOR_INPUT_SHAPING```  

### Prepare for auto Z calibration
* Home, QGL, Calibrate_Z, Move Extruder in the middle of the bed, turn off part cooling  

```PREPARE_FOR_AUTO_Z_CALIBRATION```

### Enable axis movement without homing, be carefull!
When locating the Z stop, Octoprint behaves a bit strangely (emergency shutdown)  
Therefore the X and Y axis are homed, then the kinematic position is set to a random Z value  
Finetuning with movement via Ocotprint is now possible without homing  
Be careful, you can run your nozzle into your bed!  
Following Gcode examples are for the V2.4! You might need to adjust everything to your system

```G28 X```  
```G28 Y```  
```SET_KINEMATIC_POSITION X=350 Y=350 Z=150```  

### Z-Endstop location  
klicky-variables.cfg  
z-calibration.cfg  

### Klicky dock location  
klicky-variables.cfg  

### Klicky Auto Z Calibration location  
z-calibration.cfg  

## Good websites
* https://klippylyzer.github.io/  
* https://docs.vorondesign.com/
