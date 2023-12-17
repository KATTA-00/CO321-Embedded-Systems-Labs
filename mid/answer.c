#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

#define PIN 2
#define DELAY_BUTTON 500
#define DELAY_FADING 10

int count = 0;
int flag = 0;
int stop = 0;
int first_step = 0;

int main(void)
{
    DDRB = 0x3F;
    PORTB = 0x02;

    DDRD &= ~(1 << PIN);

    TCCR0A = 0x00;
    TCCR0B = 0x00;
    TCCR0B |= (1 << CS02);

    TCNT0 = 6;

    TIMSK0 |= (1 << TOIE0);

    EICRA = 0x00;
    EICRA |= (1 << ISC01);

    EIMSK |= (1 << INT0);

    sei();

    TCCR2A = 0x00;
    TCCR2A |= (1 << WGM21) | (1 << WGM20) | (1 << COM2A1);
    TCCR2B = 0x01;

    OCR2A = 255;
    int val = 1;

    while (1)
    {
        if (stop == 1 && (PORTB & (1 << 3)))
        {
            if (first_step == 1)
            {
                TCCR2A = 0x00;
                TCCR2A |= (1 << WGM21) | (1 << WGM20) | (1 << COM2A1);
                TCCR2B = 0x01;

                OCR2A = 255;

                first_step = 0;
            }

            if (OCR2A == 0)
                val = 1;
            else if (OCR2A == 255)
                val = -1;

            OCR2A += val;

            _delay_ms(DELAY_FADING);
        }
        else
        {
            TCCR2A = 0x00;
            TCCR2B = 0x00;
        }
    }

    return 0;
}

ISR(TIMER0_OVF_vect)
{

    if (count == 50)
    {
        if (PORTB == 0x02)
            flag = 1;
        else if (PORTB == 0x20)
            flag = 0;

        if (flag == 1)
            PORTB = PORTB << 1;
        else
            PORTB = PORTB >> 1;

        count = 0;
    }
    else
        count++;

    TCNT0 = 6;
}

ISR(INT0_vect)
{
    // if (stop == 0)
    // {
    //     TCCR0B = 0x00;
    // }
    // else
    // {
    //     TCCR0B |= (1 << CS02);
    // }

    if (stop == 0)
    {
        stop = 1;
        first_step = 1;
    }
    else
        stop = 0;

    TIMSK0 ^= (1 << TOIE0);
    _delay_ms(DELAY_BUTTON);
}