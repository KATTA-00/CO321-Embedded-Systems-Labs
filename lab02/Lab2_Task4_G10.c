/*
Connect two push buttons (A and B) to two external interrupt pins. Connect 6 LEDs to
a GPIO port. Write a program where a user can input a binary number using the two
push buttons (press A to input a '0', press B to input a '1') through external interrupts,
and display that number using the LEDs. The number must be updated and displayed
every time one of the buttons are pressed.
*/

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

// define the INT0 and INT1
#define PUSH_BUTTON_1 2
#define PUSH_BUTTON_2 3

// define the number of LEDs
#define LED_COUNT 6

// define the count var
unsigned char count = 0;

int main()
{
    // config the pin as inputs and outputs
    DDRB = 0xff;
    DDRD &= ~(1 << PUSH_BUTTON_1);
    DDRD &= ~(1 << PUSH_BUTTON_2);
    // set the interrupt mode of the INT0
    EICRA |= (1 << ISC01);
    EICRA |= (1 << ISC00);
    // set the interrupt mode of the INT1
    EICRA |= (1 << ISC11);
    EICRA |= (1 << ISC10);

    // enable the global interrupt
    sei();
    // enable the INT0 and INT1
    EIMSK |= (1 << INT0);
    EIMSK |= (1 << INT1);

    // set PORTB to 0
    PORTB = 0;

    while (1)
    {
    }

    return 0;
}

// set the ISR for INT0
ISR(INT0_vect)
{
    /*
    when the count is less than LED_COUNT,
    if the INT0(push button for 1) is pressed, set HIGH the count LED
    and increment the count by one
    */
    if (count < LED_COUNT)
    {
        PORTB |= (1 << count);
        count++;
    }

    _delay_ms(200);
}

// set the ISR for INT1
ISR(INT1_vect)
{
    /*
    when the count is less than LED_COUNT,
    if the INT1(push button for 0) is pressed, only increment the count
    */
    if (count < LED_COUNT)
    {
        count++;
    }

    _delay_ms(200);
}