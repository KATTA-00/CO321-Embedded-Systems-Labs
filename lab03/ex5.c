#include <avr/io.h>
#include <avr/interrupt.h>

#define COUNT_LIMIT 25
#define LED_PIN 5

int count  = 0;

int main(void){
    DDRB = DDRB | (1<<LED_PIN);   //Set output pin 5

    TCNT0 = 6;    //Initial counter value

    TCCR0A = 0x00;  //Normal Mode
    TCCR0B = 0x04;  //Prescalar 256

    TIMSK0 |= (1<<TOIE0);   //Enable Time Interrupt Mask Register

    sei();  //Enable global interrupts

    PORTB = PORTB | (1<<LED_PIN);
    count = 0;

    while(1){
    }

}

ISR(TIMER0_OVF_vect){

    if (count == COUNT_LIMIT){
        PORTB = PORTB ^ (1<<LED_PIN);
        count = 0;
    }else
        count++;

    TCNT0 = 6;    //Initial timer0 value
}