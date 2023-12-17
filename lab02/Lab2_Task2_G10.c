/*
Write a program that toggles pin PB0 (show using a connected LED) whenever the push
button is released, using external interrupts.
*/

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

// define the INT0
#define PUSH_BUTTON 2

int main()
{
  // config the pin as inputs and outputs
  DDRB = 0x01;
  DDRD &= ~(1 << PUSH_BUTTON);

  // set the PB0 to HIGH
  PORTB = 0x01;

  // set the interrupt mode of the INT0
  EICRA |= (1 << ISC01);
  EICRA &= ~(1 << ISC00);

  // enable the global interrupt
  sei();

  // enable the INT0 interrupt
  EIMSK |= (1 << INT0);

  while (1)
  {
  }

  return 0;
}

// set the ISR for INT0
ISR(INT0_vect)
{
  // when interrupt occurs toggle PORTB
  PORTB = ~PORTB;
  _delay_ms(100);
}