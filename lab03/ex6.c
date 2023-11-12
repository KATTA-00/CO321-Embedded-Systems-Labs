#include <avr/io.h>
#include <avr/interrupt.h>

#define LED1_PIN 0
#define LED2_PIN 1

#define LED1_COUNT_MAIN 12
#define LED1_COUNT_SUB 53

int led1Count  = 0;
int led2Count  = 0;

int main(void){
    DDRB |= (1<<LED1_PIN) | (1<<LED2_PIN);   //Set output pins 5

    // TIMER0 config
    TCNT0 = 0;    //Initial counter value
    TCCR0A = 0x00;  //Normal Mode
    TCCR0B = 0x04;  //Prescalar 256

    // TIMER1 config
    TCNT1 = 0;    //Initial counter value
    TCCR1A = 0x00;  //Normal Mode
    TCCR1B = 0x04;  //Prescalar 256

    TIMSK0 |= (1<<TOIE0);   //Enable Time Interrupt Mask Register
    TIMSK1 |= (1<<TOIE1);   //Enable Time Interrupt Mask Register

    sei();  //Enable global interrupts

    PORTB = PORTB | (1<<LED1_PIN);
    PORTB = PORTB | (1<<LED2_PIN);

    led1Count = 0;
    led2Count = 0;

    while(1){
    }
    
}

ISR(TIMER0_OVF_vect){

    if (count == LED1_COUNT_MAIN){
        PORTB = PORTB ^ (1<<5);
        count = 0;
    }else
        count++;

    TCNT0 = 6;    //Initial timer0 value
}