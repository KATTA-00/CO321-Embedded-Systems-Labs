#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

#define PIN 2

int main(void)
{
    DDRB = 0xFF;
    DDRD &= ~(1 << PIN);

    PORTB = 0x00;

    EICRA |= (1 << ISC01);
    EICRA &= ~(1 << ISC00);

    EIMSK |= (1 << INT0);
    sei();

    while (1)
    {
    }

    return 0;
}

ISR(INT0_vect)
{
    PORTB = ~PORTB;
    _delay_ms(200);
}