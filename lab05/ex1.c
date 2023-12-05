#include <avr/io.h>
#include <util/delay.h>

// Define the pin 
#define ADC_IN 1

int main(void){
    DDRC = DDRC & ~(1 << ADC_IN);
    DDRD = 0xff;

    // ADCSRA |= (1 << ADEN);

    ADCSRA = 0b10000111;
    ADMUX = 0b01100001;


    while(1){

        _delay_ms(500); /* time delay */

        ADCSRA |= (1 << ADSC);

        while(!(ADCSRA & (1 << ADIF))){

        }

        PORTD = ADCH;

        ADCSRA &= ~(1 << ADSC);

    }
}
