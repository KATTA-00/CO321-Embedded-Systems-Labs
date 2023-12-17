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

> avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -o ex1 ex1.c

> avr-objcopy -O ihex -R .eeprom ex1 ex1.hex

> avrdude -F -V -c arduino -p ATMEGA328P -P COM3 -b 115200 -U flash:w:ex1.hex

#### External interrupt

EICRA – External Interrupt Control Register A
sei();
– – – – ISC11 ISC10 ISC01 ISC00

ISC11 ISC10 Description
0 0 The low level of INT1 generates an interrupt request.
0 1 Any logical change on INT1 generates an interrupt request.
1 0 The falling edge of INT1 generates an interrupt request.
1 1 The rising edge of INT1 generates an interrupt request.

EIMSK – External Interrupt Mask Register
– – – – – – INT1 INT0

#### Timer

TCCR0A – Timer/Counter Control Register A
COM0A1 COM0A0 COM0B1 COM0B0 – – WGM01 WGM00

COM0A1 COM0A0 Description
0 0 Normal port operation, OC0A disconnected.
0 1 WGM02 = 0: Normal Port Operation, OC0A Disconnected. WGM02 = 1: Toggle OC0A on Compare Match.
1 0 Clear OC0A on Compare Match, set OC0A at BOTTOM, (non-inverting mode).
1 1 Set OC0A on Compare Match, clear OC0A at BOTTOM, (inverting mode).

Normal mode
WGM02 WGM01 WGM00 - 0 0 0
Fast PWM
WGM02 WGM01 WGM00 - 0 1 1

TCCR0B – Timer/Counter Control Register B
FOC0A FOC0B – – WGM02 CS02 CS01 CS00

CS02 CS01 CS00 Description
0 0 0 No clock source (Timer/Counter stopped)
0 0 1 clkI/O/(No prescaling)
0 1 0 clkI/O/8 (From prescaler)
0 1 1 clkI/O/64 (From prescaler)
1 0 0 clkI/O/256 (From prescaler)
1 0 1 clkI/O/1024 (From prescaler)
1 1 0 External clock source on T0 pin. Clock on falling edge.
1 1 1 External clock source on T0 pin. Clock on rising edge

TCNT0 – Timer/Counter Register
OCR0A – Output Compare Register A

TIMSK0 – Timer/Counter Interrupt Mask Register
– – – – – OCIE0B OCIE0A TOIE0

TIFR0 – Timer/Counter 0 Interrupt Flag Register
– – – – – OCF0B OCF0A TOV0
