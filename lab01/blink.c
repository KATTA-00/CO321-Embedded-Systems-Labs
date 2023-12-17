#include <avr/io.h>
#include <util/delay.h>
#define LED_DALAY 1000

int main(void)
{
  DDRB = 0xFF;
  PORTB = 0;
  while (1)
  {
    PORTB = ~PORTB;
    _delay_ms(LED_DALAY);
  }
}