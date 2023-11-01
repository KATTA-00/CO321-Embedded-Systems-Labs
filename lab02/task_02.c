#include <avr/io.h>
#include <avr/interrupt.h>
#define PUSH_BUTTON 2

int main()
{
    DDRB = 0x01;
    DDRD &=  ~(1 << PUSH_BUTTON);

    PORTB = 0x01;

    EICRA |= (1 << ISC01);
    EICRA &= ~(1 << ISC00);

    sei();

    EIMSK |= (1 << INT0);

    while (1){
    }
  
    return 0;

}

ISR(INT0_vect)
{
  PORTB = ~PORTB;
}