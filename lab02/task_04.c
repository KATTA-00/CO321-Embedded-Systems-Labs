#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#define PUSH_BUTTON_1 2
#define PUSH_BUTTON_2 3

unsigned char count = 0;

int main()
{
    DDRB = 0xff;

    DDRD &=  ~(1 << PUSH_BUTTON_1);
    DDRD &=  ~(1 << PUSH_BUTTON_2);

    EICRA |= (1 << ISC01);
    EICRA |= (1 << ISC00);

    EICRA |= (1 << ISC11);
    EICRA |= (1 << ISC10);

    sei();

    EIMSK |= (1 << INT0);
    EIMSK |= (1 << INT1);

    PORTB = 0;

    while (1){
    }
  
    return 0;

}

ISR(INT0_vect)
{
    if (count < 6)
    {
        PORTB |= (1<<count);
        count++;
    }
    _delay_ms(200);
    
}

ISR(INT1_vect)
{
    if (count < 6)
    {
        count++;
    }
    _delay_ms(200);
}