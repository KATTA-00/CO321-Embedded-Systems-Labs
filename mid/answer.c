#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

int main(void)
{
    DDRB = 0xFF;

    while (1)
    {
        PORTB = 0x00;
    }

    return 0;
}