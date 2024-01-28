#include <avr/io.h>
#include <util/delay.h>

// Define the pin
#define ADC_IN 1
#define DELAY 500

int main(void)
{
    // Set ADC_IN pin as input
    DDRC = DDRC & ~(1 << ADC_IN);

    // Set PORTD as output for displaying ADC result
    DDRD = 0xFF;

    // ADC Configuration
    ADCSRA = 0x00;
    ADCSRA |= (1 << ADEN) | (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0); // Enable ADC and set prescaler
    ADMUX = 0x00;
    ADMUX |= (1 << REFS0) | (1 << MUX0) | (1 << ADLAR); // Set reference voltage, ADC channel, and left adjust result

    while (1)
    {
        _delay_ms(DELAY); /* time delay */

        // Start ADC conversion
        ADCSRA |= (1 << ADSC);

        // Wait for ADC conversion to complete
        while ((ADCSRA & (1 << ADSC)))
        {
            // Wait for conversion to complete
        }

        // Display the ADC result on PORTD
        PORTD = ADCH;
    }
}
