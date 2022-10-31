https://docs.vorondesign.com/build/startup/

1. ```STEPPER_BUZZ STEPPER=stepper_x```  
2. ```STEPPER_BUZZ STEPPER=stepper_y```  
3. ```STEPPER_BUZZ STEPPER=stepper_z```  front left  
4. ```STEPPER_BUZZ STEPPER=stepper_z1``` back left  
5. ```STEPPER_BUZZ STEPPER=stepper_z2``` back right  
6. ```STEPPER_BUZZ STEPPER=stepper_z3``` front right  
7. ```QUERY_ENDSTOPS``` check endstops  
8. set ```homing_speed: 3``` in ```z-stepper.cfg```
9. ```G28 X``` home X axis  
10. ```G28 Y``` home Y axis  
11. ```SET_KINEMATIC_POSITION X=350 Y=350 Z=150``` set actual position for Z-endstop location - BE VERY CAREFUL !!!  
12. ```M114``` get actual position for Z-endstop location -> insert everything in klipper .cfg  
13. set the Z-endstop location in ```klicky-variables.cfg```  
14. PID tuning of hotend and bed
