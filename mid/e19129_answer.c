// -------------------------------------------------------------
// University of Peradeniya - Faculty of Engineering
// Mid-Semester Examination - December 2023
// CO321 Embedded Systems
// -------------------------------------------------------------
// Registration Number: E/19/129
// -------------------------------------------------------------
// Name - K.H. Gunawardana

// Include library files here
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

// define the macros
#define PIN 2
// delay for debounce
#define DELAY_BUTTON 500
#define DELAY_FADING 4
#define COUNT_OVF 50

// define global variables
int count = 0;
int flag = 0;
int stop = 0;
int first_step = 0;

// set a function to get the 1 sen delay
void delay_timer1()
{
    TCNT1 = 49911; // Initial counter value

    TCCR1A = 0x00; // Normal Mode
    TCCR1B = 0x04; // Prescalar 256

    while ((TIFR1 & 0x01) == 0)
        ;

    TCCR1A = 0x00; // Reset timer Settings
    TCCR1B = 0x00; // Reset timer Settings

    TIFR1 = 0x01; // Clear time overflow bit
}

int main(void)
{
    // define as outputs
    DDRB = 0x3F;
    // PORTB initalization
    PORTB = 0x02;
    // define as inputs
    DDRD &= ~(1 << PIN);

    // set timer 0 to normal mode
    TCCR0A = 0x00;
    TCCR0B = 0x00;
    // set the timer 0 to 256 pre scaler
    TCCR0B |= (1 << CS02);
    // initialize the timer 0 register
    TCNT0 = 6;

    // enable the timer 0 interrupt
    TIMSK0 |= (1 << TOIE0);

    // resert EICRA register
    EICRA = 0x00;
    // set the INT01 to negative edge interrupt
    EICRA |= (1 << ISC01);

    // enable the INT01
    EIMSK |= (1 << INT0);

    // enable the global iterrupt
    sei();

    // initalization of OCR2A
    OCR2A = 255;
    int val = 1;

    while (1)
    {
        // check whether the it is PUASE and PB3 is HIGH
        if (stop == 1 && (PORTB & (1 << 3)))
        {
            // set the TIMER2 to FAST PWM and non-inverting
            TCCR2A |= (1 << WGM21) | (1 << WGM20) | (1 << COM2A1);
            // set the pre scalar to No prescaling
            TCCR2B = 0x01;

            // set the OCR2A to increment or decrement mode
            if (OCR2A == 0)
                val = 1;
            else if (OCR2A == 255)
                val = -1;

            // OCR2A to increment or decrement
            OCR2A += val;

            // delay for FADING
            // delay_timer1();
            _delay_ms(DELAY_FADING);
        }
        else
        {
            // Stop the TIMER2
            TCCR2A = 0x00;
            TCCR2B = 0x00;
            OCR2A = 255;
        }
    }

    return 0;
}

// External Intererupt 0 Service Routine
// ISR for TIMER0 overflow
ISR(TIMER0_OVF_vect)
{
    // Check the count is in COUNT_OVF
    if (count == COUNT_OVF)
    {
        // set the shifting direction
        if (PORTB == 0x02)
            flag = 1;
        else if (PORTB == 0x20)
            flag = 0;

        // shift PORTB and get the sequence
        if (flag == 1)
            PORTB = PORTB << 1;
        else
            PORTB = PORTB >> 1;

        // initalization of the count
        count = 0;
    }
    else
        count++;

    // set the TCNT0 to 6
    TCNT0 = 6;
}

// ISR for INT0
// Timer0 Overflow Interrupt Service Routine
ISR(INT0_vect)
{
    // Unmask and Mask the TIMER0 overflow
    TIMSK0 ^= (1 << TOIE0);

    // set the stop flag
    if (stop == 0)
    {
        stop = 1;
    }
    else
        stop = 0;

    _delay_ms(DELAY_BUTTON);
}
