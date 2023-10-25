#include <avr/io.h>
#include <util/delay.h>

int main()
{
  DDRB = 0xFF;

  PORTB = 0xFF;
  int c = 0;
  while (1)
  {
    c++;
    PORTB = ~PORTB;
    _delay_ms(1000);
  }

  return 0;
}