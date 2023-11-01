#include <avr/io.h>
#include <util/delay.h>

// define the delay
#define LED_DALAY 1000

/* Connect four (4) LEDs to Port B and blink all of them simultaneously */

int main(void)
{
  DDRB = 0x0F; /* configure PORTB for output*/

  PORTB = 0; /* set all the pin in PORTB to low */

  while (1)
  {
    PORTB = ~PORTB; /* blink the LEDs using toggle */
    _delay_ms(LED_DALAY); /* time delay */
  }

}