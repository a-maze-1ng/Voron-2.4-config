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
11. ```SET_KINEMATIC_POSITION X=350 Y=350 Z=200``` set actual position for Z-endstop location - BE VERY CAREFUL !!!
12. ```G1 X___ F1000``` move to X-position
13. ```G1 Y___ F1000``` move to Y-position
14. manual move to the Z-endstop location  
16. ```M114``` get actual position for Z-endstop location -> insert everything in ```klicky-variables.cfg```  
17. ```FIRMWARE_RESTART```  
18. ```G28```  
19. get klicky probe location -> same procedure  
20. update ```klicky-variables.cfg```  
21. ```Attach_Probe``` Attach probe  
22. ```QUERY_PROBE``` check endstops
23. ```Dock_Probe``` Attach probe
24. PID tuning of hotend and bed
