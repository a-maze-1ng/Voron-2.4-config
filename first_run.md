https://docs.vorondesign.com/build/startup/

1. ```STEPPER_BUZZ STEPPER=stepper_x```  
2. ```STEPPER_BUZZ STEPPER=stepper_y```  
3. ```STEPPER_BUZZ STEPPER=stepper_z```  front left  
4. ```STEPPER_BUZZ STEPPER=stepper_z1``` back left  
5. ```STEPPER_BUZZ STEPPER=stepper_z2``` back right  
6. ```STEPPER_BUZZ STEPPER=stepper_z3``` front right  
7. ```QUERY_ENDSTOPS``` check endstops  
8. ```G28 X``` home X axis  
9. ```G28 Y``` home Y axis  
10. ```SET_KINEMATIC_POSITION X=0 Y=0 Z=150``` set actual position for Z-endstop location - BE VERY CAREFUL !!!  
11. ```M114``` get actual position for Z-endstop location -> insert everything in klipper .cfg  
12. PID tuning of hotend and bed
