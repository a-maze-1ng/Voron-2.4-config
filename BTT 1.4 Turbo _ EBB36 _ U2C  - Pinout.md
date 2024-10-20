### General Info  
BTT 1.4 Turbo Pinout [SKR 1.4 Turbo Pinout](https://github.com/bigtreetech/BIGTREETECH-SKR-V1.3/blob/master/BTT%20SKR%20V1.4/Hardware/SKR-V1.4-Turbo-pinout.jpg)  
BTT EBB36 V1.2 Pinout [EBB36 Pinout](https://github.com/bigtreetech/EBB/blob/master/EBB%20CAN%20V1.1%20and%20V1.2%20(STM32G0B1)/EBB36%20CAN%20V1.1%20and%20V1.2/Hardware/EBB36%20CAN%20V1.1%26V1.2-PIN.png)  
BTT U2C Pinout [U2C Pinout]()  


### Connection between Toolhead and U2C  
| Colour        | Remark      |
| ------------- |-------------|
| Green         | CAN_H       |
| White         | CAN_L       |
| Yellow        | 24 V        |
| Brown         | GND         |

![5d915c3b-ce41-417a-bf05-887c1da230cd](https://github.com/user-attachments/assets/b3e9c138-2e38-42b7-86f3-c257255bd29f)
![57a4a525-31ea-4565-ad69-6bb50510c090](https://github.com/user-attachments/assets/999e5199-ebd2-4c06-82be-f6cbe635ad71)


### Pinout EBB36
| Pin           | Function                | EBB36 V1.2 Pinout  |
| ------------- |-------------------------|--------------------|
| PA3           | Thermistor Hotend       | TH0                |
| GND           | Thermistor Hotend       | TH0                |
| ------------- |-------------------------|--------------------|
| PA0           | Hotend Fan              | FAN1               |
| +5V           | Hotend Fan              | Probe +5V          |
| PB9           | Hotend Fan              | Probe Tacho Signal |
| ------------- |-------------------------|--------------------|
| GND           | 24V -> 12V Konverter    | Probe GND          |
| VIN           | 24V -> 12V Konverter    | FAN2               |
| ------------- |-------------------------|--------------------|
| PA1           | Part Cooling Fan        | FAN2               |
| ------------- |-------------------------|--------------------|
| PB13          | Hotend                  | Hotend 0           |
| VIN           | Hotend                  | Hotend 0           |
| ------------- |-------------------------|--------------------|
| PB8           | X-Endstop               | Probe              |
| GND           | X-Endstop               | Probe              |
| ------------- |-------------------------|--------------------|
| +5V           | Klicky                  | I2C                |
| GND           | Klicky                  | I2C                |
| PB3           | Klicky                  | I2C                |
| ------------- |-------------------------|--------------------|
| +5V           | LED                     | RGB                |
| PD3           | LED                     | RGB                |
| GND           | LED                     | RGB                |

![EBB36 CAN V1 1 V1 2-PIN](https://github.com/user-attachments/assets/e71d1fb7-6fac-44d7-b4ae-b998b349c686)
