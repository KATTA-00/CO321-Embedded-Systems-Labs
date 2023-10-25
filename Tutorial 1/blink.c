#include <avr/io.h>
#include <util/delay.h>
#define LED_DALAY 1000

int main(void)
{
  DDRB = 0x0F;
  while (1)
  {
    PORTB = 0x0F;
    _delay_ms(1000);
    PORTB = 0;
    _delay_ms(1000);
  }
}