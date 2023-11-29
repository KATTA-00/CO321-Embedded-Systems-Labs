#include <avr/io.h>

// Define the pin connected to the LED
#define LED_PIN 6

int main(void){
    // Set the LED pin as an output
    DDRD = DDRD | (1 << LED_PIN);

    // Configure Timer/Counter 0: Fast PWM, non-inverting mode
    TCCR0A = 0b10000011;

    // Set the prescaler to 64
    TCCR0B = 0b00000011;

    // Initialize the timer counter
    TCNT0 = 0;

    // Set the compare value for PWM duty cycle (50% duty cycle)
    OCR0A = 127;

    // Infinite loop to keep the program running
    while(1){
    }
}
