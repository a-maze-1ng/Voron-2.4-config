https://www.klipper3d.org/RPi_microcontroller.html  

1. ```cd ~/klipper/```  
2. ```sudo cp "./scripts/klipper-mcu-start.sh" /etc/init.d/klipper_mcu```  
3. ```sudo update-rc.d klipper_mcu defaults```  
4. ```cd ~/klipper/```  
5. ```make menuconfig```  
6. Micro-controller Architecture --> Linux process  
7. q --> yes  
8. ```sudo service klipper stop```  
9. ```make flash```  
10. ```sudo service klipper start```  
