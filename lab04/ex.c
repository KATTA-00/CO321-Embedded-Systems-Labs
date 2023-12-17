#include <avr/io.h>
#include <util/delay.h>

#define PIN 3

int main(void)
{
    DDRB = 0xFF;
    PORTB = 0xFF;

    PORTB &= ~(1 << PIN);

    TCCR2A = 0x00;
    TCCR2A |= (1 << COM0A1) | (1 << WGM01) | (1 << WGM00);
    TCCR2B = 0x00;
    TCCR2B |= (1 << CS01) | (1 << CS00);

    OCR2A = 30;
    // OCR1B = 30;

    while (1)
    {
        for (int i = 0; i < 256; i++)
        {
            OCR2A = i;
            _delay_ms(10);
        }
    }

    return 0;
}