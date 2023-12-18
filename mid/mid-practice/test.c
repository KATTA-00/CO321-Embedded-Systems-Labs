#include <avr/io.h>
// #include <util/delay.h>
#include <avr/interrupt.h>

int main(void)
{
    DDRB = 0xFF;
    PORTB = 1;

    // EICRA = 0x00;
    // EICRA |= (1 << ISC01);

    // EIMSK |= (1 << INT0);

    TCCR0A = 0x00;
    // TCCR0B = 0x00;
    // TCCR0B |= (1 << CS02) | (1 << CS00);
    TCCR0B = 0x05;

    TCNT0 = 0x00;

    TIMSK0 |= (1 << TOIE0);

    sei();

    while (1)
    {
    }

    return 0;
}

// ISR(INT0_vect)
// {
//     // PORTB = PORTB ^ (1 << 0);
// }

ISR(TIMER0_OVF_vect)
{
    // PORTB = PORTB ^ (1 << 1);
    PORTB = ~PORTB;
    // TCNT0 = 6;
}
