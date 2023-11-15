#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#define DELAY 100

unsigned char counter0 = 0;

int main(void){
    DDRB = 0x03;   //Set output pin

    TCNT0 = 203;    //Initial counter value
    TCNT1 = 34286;    //Initial counter value

    TCCR0A = 0x00;  //Normal Mode
    TCCR0B = 0x04;  //Prescalar 256

    TCCR1A = 0x00;  //Normal Mode
    TCCR1B = 0x04;  //Prescalar 256

    TIMSK0|= (1<<TOIE0);   //Enable Time Interrupt Mask Register

    TIMSK1|= (1<<TOIE1);   //Enable Time Interrupt Mask Register

    sei();  //Enable global interrupts

    PORTB = 0x03;


    while(1){
    }
}

ISR(TIMER0_OVF_vect){

    if (counter0 == 13){ 
        PORTB = PORTB ^ (1<<0);    
        TCNT0 = 203;        
        counter0 = 0;
    }else {
        counter0++;
    }

}

ISR(TIMER1_OVF_vect){

    PORTB = PORTB ^ (1<<1);    
    TCNT1 = 34286;        

}