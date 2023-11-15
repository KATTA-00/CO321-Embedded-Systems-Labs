#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#define DELAY 100

int counter = 0;

int main(void){
    DDRB = 0x01;   //Set output pin

    TCNT0 = 0;    //Initial counter value

    TCCR0A = 0x00;  //Normal Mode
    TCCR0B = 0x04;  //Prescalar 256

    TIMSK0|= (1<<TOIE0);   //Enable Time Interrupt Mask Register

    sei();  //Enable global interrupts

    PORTB = 0;


    while(1){
    }
}

ISR(TIMER0_OVF_vect){

    if (counter == 24){     //256 * 24 = 6144
        TCNT0 = 150;        //Balance  = 6250 - 6144 = 106 --> Initial Count = 256 -106 = 150
        counter++;
    }else if (counter == 25){   //Reset to 0
        PORTB = PORTB ^ (1<<0);
        TCNT0 = 0;
        counter = 0;
    }else if (counter < 24){
        counter++;
    }

}