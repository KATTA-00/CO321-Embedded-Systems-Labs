#include <avr/io.h>
#include <util/delay.h>

// define the delay
#define LED_DALAY 100
#define LED_NUM 4

/* Using four (4) LEDs, implement a "Knight Rider" style display.
If the four LEDs are A, B, C and D then the turn order of lights should be: ABCDCBABC…… */

int main(void)
{
  DDRB = 0x0F; /* configure PORTB for output*/
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