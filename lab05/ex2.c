#include <avr/io.h>
#include <util/delay.h>

// Define the pin
#define ADC_IN 1
#define DELAY 100
#define LIMIT 245

int main(void)
{
    DDRC = DDRC & ~(1 << ADC_IN);
    DDRD = 0xFF;

    ADCSRA = 0x00;
    // ADCSRA = 0b10000111;
    ADCSRA |= (1 << ADEN) | (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0);
    ADMUX = 0x00;
    // ADMUX = 0b01100001;
    ADMUX |= (1 << MUX0) | (1 << ADLAR);

    while (1)
    {

        _delay_ms(DELAY); /* time delay */

        ADCSRA |= (1 << ADSC);

        while (!(ADCSRA & (1 << ADIF)))
        {
        }

        // PORTD = ADCH;

        if (ADCH > LIMIT)
        {
            PORTD = 0xFF;
        }
        else
        {
            PORTD = 0x00;
        }
    }
}
