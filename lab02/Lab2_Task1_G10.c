/*
PD7 pin is connected to a push button. Write a program that uses 6 LEDs connected to
PORTB (6 LSBs) to display the number of times the push button is pressed, as a binary
number. Implement without using external interrupts. (i.e. Use polling)
*/

#include <avr/io.h>

// define the PD7
#define PUSH_BUTTON 7

int main()
{
    // config the pin as inputs and outputs
    DDRB = 0xff;
    DDRD &=  ~(1 << PUSH_BUTTON);

    // define the count var
    unsigned char count = 0;
    char flag = 0;
    PORTB = count;

    while (1){

        // if the button is pressed
        if ((PIND & (1 << PUSH_BUTTON)) && flag == 0) {
            // if the count hits the maximum
            if (count == 0x111111){
                count  = 0;
                PORTB = count;
                flag = 1;
            // else increment the count and output
            } else {
                count ++;
                PORTB = count;
                flag = 1;
            }

        // when the button is released
        }else if (!(PIND & (1 << PUSH_BUTTON)) && flag == 1){
            flag = 0;
        }

    }
  
    return 0;

}