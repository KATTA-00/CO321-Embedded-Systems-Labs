#include <avr/io.h>
#include <avr/interrupt.h>

// void my_delay()
// {
//     TCNT0 = 0;
//     TCCR0A = 0x00;
//     TCCR0B = 0x05;

//     while (!(TIFR0 & (1 << TOV0)))
//     {
//     }

//     TCCR0A = 0x00;
//     TCCR0B = 0x00;

//     TIFR0 |= (1 << TOV0); // Clear time overflow bit
// }

int main(void)
{
    DDRB = 0xFF;
    PORTB = 1;

    TCCR0A = 0x00;
    TCCR0B = 0x05;

    TCNT0 = 0x00;

    TIMSK0 |= (1 << TOIE0);
    sei();

    while (1)
    {
    }

    return 0;
}

ISR(TIMER0_OVF_vect)
{
    // PORTB = ~PORTB;
    TCNT0 = 0x00;
}