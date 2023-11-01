#include <avr/io.h>
#include <util/delay.h>
#define LED_DALAY 50
#define LED_NUM 4

int main(void)
{
  DDRB = 0x0F;
  unsigned char z = 1;
  while (1)
  {
    for (int i = 0; i < LED_NUM - 1; i++)
    {
      PORTB = z;
      z = z << 1;
      _delay_ms(LED_DALAY);
    }

    for (int i = 0; i < LED_NUM - 1; i++)
    {
      PORTB = z;
      z = z >> 1;
      _delay_ms(LED_DALAY);
    }
  }
}