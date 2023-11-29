#include <avr/io.h>
#include <util/delay.h>

// Define the pin connected to the LED
#define LED_PIN 6

// Define the delay
#define LED_DELAY 10

int main(void){
    // Set the LED pin as an output
    DDRD = DDRD | (1 << LED_PIN);

    // Configure Timer/Counter 0: Fast PWM, non-inverting mode
    TCCR0A = 0b10000011;

    // Set the prescaler to 64
    TCCR0B = 0b00000011;

    // Initialize the timer counter
    TCNT0 = 0;

    // Initialize the PWM duty cycle value
    OCR0A = 0;

    // Variable to control the direction of PWM change
    signed char val = 1;

    // Infinite loop for PWM animation
    while(1){
        // Check if PWM duty cycle has reached the upper limit
        if (OCR0A == 255)
            val = -1;
        // Check if PWM duty cycle has reached the lower limit
        else if (OCR0A == 0)
            val = 1;

        // Adjust the PWM duty cycle
        OCR0A += val;

        // Delay to control the speed of PWM change
        _delay_ms(LED_DELAY);
    }
}
