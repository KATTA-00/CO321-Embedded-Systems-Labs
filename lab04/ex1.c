#include <avr/io.h>

#define LED_PIN 6

int main(void){

    DDRD = DDRD | (1 << LED_PIN);

    TCCR0A = 0b10000011;

    TCCR0B = 0b00000011;

    TCNT0 = 0;
    OCR0A = 127;

    while(1){
    }

}