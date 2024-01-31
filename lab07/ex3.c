/*************************************************************************
Title:    Testing output to a HD44780 based LCD display.
Author:   Peter Fleury  <pfleury@gmx.ch>  http://tinyurl.com/peterfleury
File:     $Id: test_lcd.c,v 1.8 2015/01/31 18:04:08 peter Exp $
Software: AVR-GCC 4.x
Hardware: HD44780 compatible LCD text display
          AVR with external SRAM interface if memory-mapped LCD interface is used
          any AVR with 7 free I/O pins if 4-bit IO port mode is used
**************************************************************************/
#include <stdlib.h>
#include <avr/io.h>
#include <avr/pgmspace.h>
#include <util/delay.h>
#include "lcd.h"

#define SIZE 10
#define ADDRESS 0

char buffer[SIZE + 1] = "1234567890\0";
int key;
char input = '2';

void columnOutRowIn()
{

    // DDRB
    // DDRB = 0b00000011;
    // DDRD = 0b11000000;

    DDRB |= (1 << PINB0) | (1 << PINB1);
    DDRB &= ~((1 << PINB2) | (1 << PINB3) | (1 << PINB4) | (1 << PINB5));
    DDRD |= (1 << PIND6) | (1 << PIND7);

    // PORTB = 0b00000011;
    // PORTD = 0b11000000;

    PORTB |= (1 << PINB0) | (1 << PINB1);
    PORTB &= ~((1 << PINB2) | (1 << PINB3) | (1 << PINB4) | (1 << PINB5));
    PORTD |= (1 << PIND6) | (1 << PIND7);

    _delay_ms(10);
}

void columnInRowOut()
{
    // DDRB = 0b00111100;
    // DDRD = 0b00000000;

    DDRB |= (1 << PINB2) | (1 << PINB3) | (1 << PINB4) | (1 << PINB5);
    DDRB &= ~((1 << PINB0) | (1 << PINB1));
    DDRD &= ~((1 << PIND6) | (1 << PIND7));

    // PORTB = 0b00111100;
    // PORTD = 0b00000000;

    PORTB |= (1 << PINB2) | (1 << PINB3) | (1 << PINB4) | (1 << PINB5);
    PORTB &= ~((1 << PINB0) | (1 << PINB1));
    PORTD &= ~((1 << PIND6) | (1 << PIND7));

    _delay_ms(10);
}

char getKeyPad()
{

    char key = ' ';
    char keyPad[4][4] = {
        {'1', '2', '3', 'A'},
        {'4', '5', '6', 'B'},
        {'7', '8', '9', 'C'},
        {'*', '0', '#', 'D'}};

    int i = -1;
    int j = -1;

    _delay_ms(10);
    columnOutRowIn();
    while (i == -1)
    {
        _delay_ms(10);
        if ((PINB & (1 << PINB2)))
        {
            i = 3;
        }
        else if ((PINB & (1 << PINB3)))
        {
            i = 2;
        }
        else if ((PINB & (1 << PINB4)))
        {
            i = 1;
        }
        else if ((PINB & (1 << PINB5)))
        {
            i = 0;
        }
    }

    _delay_ms(10);

    columnInRowOut();
    while (j == -1)
    {
        _delay_ms(10);
        while ((PIND & (1 << PINB6)))
        {
            j = 3;
        }
        while ((PIND & (1 << PINB7)))
        {
            j = 2;
        }
        while ((PINB & (1 << PINB0)))
        {
            j = 1;
        }
        while ((PINB & (1 << PINB1)))
        {
            j = 0;
        }
    }

    _delay_ms(100);

    // usart_send_string("i, j - ");
    // usart_send_int(i);
    // usart_send(',');
    // usart_send_int(j);
    // usart_send('\n');

    // usart_send_string("values - ");
    // usart_send(keyPad[i][j]);
    // usart_send('\n');

    return keyPad[i][j];
}

void EEPROMwrite(unsigned int address, char data)
{
    // wait for completion of previous write
    while (EECR & (1 << EEPE))
        ;

    EEAR = address;
    EEDR = data;

    // write logical one to EEMPE
    EECR |= (1 << EEMPE);

    // start eeprom write by setting EEPE
    EECR |= (1 << EEPE);
}

void EEPROMwriteString(unsigned int address, char *sen)
{
    int i = 0;
    while (sen[i] != '\0')
    {
        EEPROMwrite(address + i, sen[i]);
        i++;
    }
    EEPROMwrite(address + i, '\0');
}

char EEPROMread(unsigned int address)
{

    while (EECR & (1 << EEPE))
        ;

    EEAR = address;

    EECR |= (1 << EERE);

    return EEDR;
}

void EEPROMreadString(unsigned int address, char *sen)
{
    int i = 0;
    char c = EEPROMread(address + i);
    sen[i] = c;

    while (c != '\0')
    {

        i++;
        c = EEPROMread(address + i);
        sen[i] = c;
    }
}

int main(void)
{

    /* initialize display, cursor off */
    lcd_init(LCD_DISP_ON);
    int row, col;

    while (1)
    {
        /* clear display and home cursor */
        lcd_clrscr();

        // need to encryp or change the key
        lcd_gotoxy(0, 0);
        lcd_puts("Press 1 or 2\n");
        lcd_gotoxy(0, 1);
        lcd_puts("(Encrypt/Key)\n");

        // wait for user input

        _delay_ms(5000);
        lcd_clrscr();

        if (input == '1')
        {
            row = 0;
            col = 0;
            for (int i = 0; i < SIZE; i++)
            {
                // wait for user input

                /* write single char to display */
                lcd_putc(buffer[i]);

                _delay_ms(1000);

                col++;
                lcd_gotoxy(col, row);
            }

            _delay_ms(1000);
            lcd_clrscr();
            buffer[SIZE] = '\0';

            lcd_puts("Processing...\n");
            _delay_ms(1000);
            lcd_clrscr();

            lcd_puts(buffer);

            lcd_gotoxy(0, 1);
            lcd_puts("Continue - #\n");

            // wait for user input

            _delay_ms(5000);

            lcd_clrscr();
        }
        else
        {
            lcd_gotoxy(0, 0);
            lcd_puts("Enter the Key\n");

            row = 0;
            col = 0;
            int len = 0;

            lcd_gotoxy(0, 1);
            row++;
            for (;;)
            {
                // wait for user input

                /* write single char to display */
                lcd_putc(buffer[len]);

                _delay_ms(1000);

                len++;

                if (buffer[len] == '0')
                    break;

                col++;
                lcd_gotoxy(col, row);
            }

            _delay_ms(1000);
            lcd_clrscr();
            buffer[SIZE] = '\0';

            lcd_gotoxy(0, 0);
            lcd_puts("Key is Saved!!!\n");
            _delay_ms(4000);
        }
    }
}
