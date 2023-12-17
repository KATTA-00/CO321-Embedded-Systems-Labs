#include <avr/io.h>
#include <util/delay.h>

#define BLINK_DELAY_MS 1000
#define LED_PIN 5

/* BLink the LED that connected to the pin 2*/

int main(void)
{
  DDRB = DDRB | (1 << LED_PIN); /* configure pin 2 of PORTB for output*/
  while (1)
  {
    PORTB = PORTB | (1 << LED_PIN); /* set pin 2 high to turn led on */
    _delay_ms(BLINK_DELAY_MS);
    PORTB = PORTB & ~(1 << LED_PIN); /* set pin 2 low to turn led off */
    _delay_ms(BLINK_DELAY_MS);
  }
}