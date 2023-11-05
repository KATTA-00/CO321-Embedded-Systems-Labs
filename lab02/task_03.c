/*
Extend the program in part 2, so that the number of times the push button was released
is displayed as a binary number on a set of LEDs connected to PORTB
*/

#include <avr/io.h>
#include <avr/interrupt.h>

// define the INT0 
#define PUSH_BUTTON 2
// define the count var
unsigned char count = 0;

int main()
{
    // config the pin as inputs and outputs
    DDRB = 0xff;
    DDRD &=  ~(1 << PUSH_BUTTON);

    // set the interrupt mode of the INT0
    EICRA |= (1 << ISC01);
    EICRA &= ~(1 << ISC00);

    // enable the global interrupt
    sei();

    // enable the INT0 interrupt
    EIMSK |= (1 << INT0);

    // set the PORTB to count
    PORTB = count;

    while (1){
    }
  
    return 0;

}

// set the ISR for INT0
ISR(INT0_vect)
{
    // if the count hits maximum, reset the count
    if (count == 0x111111){
        count  = 0;
        PORTB = count;
    // else increment the count and output
    } else {
        count ++;
        PORTB = count;
    }

    _delay_ms(100);
}