### PowerShell

> usbipd wsl list

---

> usbipd wsl attach --busid <busid>

---

> usbipd wsl detach --busid <busid>

### Bash

> lsusb

#### check for COM

> mode


#### Command to upload a USB device

> avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -o ex1 ex1h.c

> avr-objcopy -O ihex -R .eeprom ex1 ex1.hex

> avrdude -F -V -c arduino -p ATMEGA328P -P COM3 -b 115200 -U flash:w:ex1.hex
