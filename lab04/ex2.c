#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN 6
#define LED_DELAY 100

int main(void){

    DDRD = DDRD | (1 << LED_PIN);

    TCCR0A = 0b10000011;

    TCCR0B = 0b00000011;

    TCNT0 = 0;
    OCR0A = 0;
    signed char val = 1;

    while(1){
        if (OCR0A == 255)
            val = -1;
        else if (OCR0A == 0)
            val = 1;

        OCR0A += val;
        _delay_ms(LED_DELAY);
    }

}