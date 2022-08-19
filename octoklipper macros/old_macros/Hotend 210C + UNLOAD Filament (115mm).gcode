SET_FILAMENT_SENSOR SENSOR=btt_sensor ENABLE=0 ; deactivate btt smart filament sensor
M109 S210 ; set hotend to 210C
G91 ; use relative coordinates
M83 ; use relative distances for extrusion
G1 E-5 F3200 ; extract filament to cold end area 
G1 E5 F3200 ; push back the filament to smash any stringing
G1 E-15 F3200 ; Extract back fast in the cold zone
G1 E-30 F300 ; Continue extraction slowly, allow the filament time to cool solid before it reaches the gears
G1 E-30 F300 ; Continue extraction slowly, allow the filament time to cool solid before it reaches the gears
G1 E-30 F300 ; Continue extraction slowly, allow the filament time to cool solid before it reaches the gears
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
SET_FILAMENT_SENSOR SENSOR=btt_sensor ENABLE=1 ; activate btt smart filament sensor
