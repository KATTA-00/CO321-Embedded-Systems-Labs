#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#define BLINK_DELAY_MS 100

int main(void)
{
    DDRB = 0x1F; // Set output pins 5

    TCNT1 = 49911; // Initial counter value

    TCCR1A = 0x00; // Normal Mode
    TCCR1B = 0x05; // Prescalar 1024

    TIMSK1 |= (1 << TOIE1); // Enable Time Interrupt Mask Register

    sei(); // Enable global interrupts

    PORTB = PORTB | (1 << 5);

    while (1)
    {

        uint8_t i = 0;
        for (i = 0; i < 4; i++)
        {
            PORTB = PORTB | (1 << i); /* set pin i high to turn led on */
            _delay_ms(BLINK_DELAY_MS);
            PORTB = PORTB & ~(1 << i); /* set pin i low to turn led off */
            _delay_ms(BLINK_DELAY_MS);
        }

        for (i = 2; i > 0; i--)
        {
            PORTB = PORTB | (1 << i); /* set pin i high to turn led on */
            _delay_ms(BLINK_DELAY_MS);
            PORTB = PORTB & ~(1 << i); /* set pin i low to turn led off */
            _delay_ms(BLINK_DELAY_MS);
        }
    }
}

ISR(TIMER1_OVF_vect)
{

    PORTB = PORTB ^ (1 << 5);
    TCNT1 = 49911; // Initial counter value
}