#include <avr/io.h>
#include <util/delay.h>

// Define the pin connected to the LED
#define LED_PIN 5

// Define the delay for changing the PWM frequency
#define LED_DELAY 1000

int main(void){
    // Set the LED pin as an output
    DDRD = DDRD | (1 << LED_PIN);

    // Configure Timer/Counter 0: Phase Correct PWM, non-inverting mode
    TCCR0A = 0b00100011;

    // Set the prescaler to 8
    TCCR0B = 0b00000010;

    // Initialize the timer counter
    TCNT0 = 0;

    // Set the compare value for PWM frequency
    OCR0B = 125;

    // Infinite loop for PWM frequency variation
    while(1){
        // Increase the prescaler to decrease the PWM frequency (slowly fading in)
        for (int i = 0; i < 3; i++){
            TCCR0B += 1;
            _delay_ms(LED_DELAY);
        }

        // Decrease the prescaler to increase the PWM frequency (slowly fading out)
        for (int i = 0; i < 3; i++){
            TCCR0B -= 1;
            _delay_ms(LED_DELAY);
        }
    }
}
