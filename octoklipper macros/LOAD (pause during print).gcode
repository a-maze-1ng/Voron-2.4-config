SET_FILAMENT_SENSOR SENSOR=btt_sensor ENABLE=0 ;deactivate btt smart filament sensor
G91 ; use relative coordinates
M83 ; use relative distances for extrusion
; small feeding steps for octoprint -> avoid timeout while paused printer
G1 E25 F300 ; feed filament to hotend
G1 E25 F300 ; feed filament to hotend
G1 E25 F300 ; feed filament to hotend
G1 E25 F300 ; feed filament to hotend
G1 E25 F300 ; feed filament to hotend
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
SET_FILAMENT_SENSOR SENSOR=btt_sensor ENABLE=1 ;deactivate btt smart filament sensor
