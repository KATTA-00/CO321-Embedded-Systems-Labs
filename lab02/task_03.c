#include <avr/io.h>
#include <avr/interrupt.h>

#define PUSH_BUTTON 2

unsigned char count = 0;

int main()
{
    DDRB = 0xff;
    DDRD &=  ~(1 << PUSH_BUTTON);

    EICRA |= (1 << ISC01);
    EICRA &= ~(1 << ISC00);

    sei();

    EIMSK |= (1 << INT0);

    PORTB = count;

    while (1){
    }
  
    return 0;

}

ISR(INT0_vect)
{
    if (count == 0x111111){
        count  = 0;
        PORTB = count;
    } else {
        count ++;
        PORTB = count;
    }

    _delay_ms(100);
}