#include <avr/io.h>
#include <util/delay.h>

// Define the pin
#define ADC_IN 1
#define DELAY 100
#define LIMIT 245

int main(void)
{
    // Set ADC_IN pin as input
    DDRC = DDRC & ~(1 << ADC_IN);

    // Set PORTD as output for displaying result
    DDRD = 0xFF;

    // ADC Configuration
    ADCSRA = 0x00;
    ADCSRA |= (1 << ADEN) | (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0); // Enable ADC and set prescaler
    ADMUX = 0x00;
    ADMUX |= (1 << MUX0) | (1 << ADLAR); // Set ADC channel and left adjust result

    while (1)
    {
        _delay_ms(DELAY); /* Time delay */

        // Start ADC conversion
        ADCSRA |= (1 << ADSC);

        // Wait for ADC conversion to complete
        while ((ADCSRA & (1 << ADSC)))
        {
            // Wait for conversion to complete
        }

        // Check if ADC result is above the limit
        if (ADCH > LIMIT)
        {
            // If above limit, set all bits in PORTD to HIGH
            PORTD = 0xFF;
        }
        else
        {
            // If below or equal to the limit, set all bits in PORTD to LOW
            PORTD = 0x00;
        }
    }
}
