SET_FILAMENT_SENSOR SENSOR=btt_sensor ENABLE=0 ;deactivate btt smart filament sensor
M109 S210 ; heat and wait until extruder has 210C
G91 ; use relative coordinates
M83 ; use relative distances for extrusion
; small feeding steps for octoprint -> avoid timeout while paused printer
G1 E25 F300 ; feed filament to hotend
G1 E25 F300 ; feed filament to hotend
G1 E25 F300 ; feed filament to hotend
G1 E25 F300 ; feed filament to hotend
G1 E25 F300 ; feed filament to hotend
;purge starts here - 100mm
G1 E25 F300
G1 E25 F300
G1 E25 F300
G1 E25 F300
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
SET_FILAMENT_SENSOR SENSOR=btt_sensor ENABLE=1 ;deactivate btt smart filament sensor
