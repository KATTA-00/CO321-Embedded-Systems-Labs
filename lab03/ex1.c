#include <avr/io.h>

void delay_timer0(){
    TCNT0 = 0x83;    //Initial counter value

    TCCR0A = 0x00;  //Normal Mode
    TCCR0B = 0x04;  //Prescalar 256

    while((TIFR0 & 0x01) == 0);

    TCCR0A = 0x00;  //Reset timer Settings
    TCCR0B = 0x00;  //Reset timer Settings

    TIFR0 = 0x01;   //Clear time overflow bit
}

int main(void){
    DDRB = DDRB | (1<<5);   //Set output pin

    while(1){
        PORTB = PORTB | (1<<5);
        delay_timer0();

        PORTB = PORTB & ~(1<<5);
        delay_timer0();
    }

    
}