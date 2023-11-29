#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN 6
#define LED_DELAY 1000

int main(void){

    DDRD = DDRD | (1 << LED_PIN);

    TCCR0A = 0b10000011;

    TCCR0B = 0b00000010;

    TCNT0 = 0;
    OCR0A = 127;

    while(1){
        for (int i=0; i<4; i++){
            TCCR0B += i;
            _delay_ms(LED_DELAY);
        }

        for (int i=-3; i<=0; i++){
            TCCR0B += i;
            _delay_ms(LED_DELAY);
        }
    }

}