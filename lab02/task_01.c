#include <avr/io.h>

#define PUSH_BUTTON 2

int main()
{
    DDRB = 0xff;
    DDRD &=  ~(1 << PUSH_BUTTON);

    unsigned char count = 0;
    char flag = 0;
    PORTB = count;

    while (1){

        if ((PIND & (1 << PUSH_BUTTON)) && flag == 0) {

            if (count == 0x111111){
                count  = 0;
                PORTB = count;
                flag = 1;
            } else {
                count ++;
                PORTB = count;
                flag = 1;
            }

        }else if (!(PIND & (1 << PUSH_BUTTON)) && flag == 1){
            flag = 0;
        }

    }
  
    return 0;

}