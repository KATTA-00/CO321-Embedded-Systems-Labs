#include <avr/io.h>
#include <util/delay.h>
#include <stdlib.h> // for itoa function

#define FOSC 16000000 // Clock Speed
#define BAUD 9600
#define MYUBRR FOSC / 16 / BAUD - 1

#define ADDRESS 0

void usart_init(unsigned int ubrr)
{
    /* Set baud rate */
    UBRR0H = (unsigned char)(ubrr >> 8);
    UBRR0L = (unsigned char)(ubrr & 0xFF);

    /* Enable receiver and transmitter */
    UCSR0B = (1 << RXEN0) | (1 << TXEN0);

    /* Set frame format: 8 data bits, 1 stop bit */
    UCSR0C |= (1 << UCSZ00) | (1 << UCSZ01);
}

void usart_send(unsigned char data)
{
    /* Wait for empty transmit buffer */
    while (!(UCSR0A & (1 << UDRE0)))
        ;

    /* Put data into buffer, sends the data */
    UDR0 = data;
}

unsigned char usart_receive(void)
{
    /* Wait for data to be received */
    while (!(UCSR0A & (1 << RXC0)))
        ;

    /* Get and return received data from buffer */
    return UDR0;
}

void usart_send_string(char *string)
{
    /* Send a string character by character */
    while (*string != '\0')
    {
        usart_send(*string++);
    }
}

int usart_receive_string(char *sen)
{
    unsigned char c;
    c = usart_receive();
    int i = 0;

    /* Receive characters until a newline character is encountered */
    while (c != '\n' && c != '\r')
    {
        sen[i] = c;
        c = usart_receive();
        i++;
    }

    // sen[i++] = '\n';
    sen[i] = '\0';
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

void usart_send_int(int number)
{
    char buffer[10]; // Buffer to hold the string representation of the integer

    // Convert the integer to a string
    itoa(number, buffer, 10);

    // Send each character of the string
    for (int i = 0; buffer[i] != '\0'; ++i)
    {
        usart_send(buffer[i]);
    }
}

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

int main(void)
{
    usart_init(MYUBRR);

    while (1)
    {

        char c = getKeyPad();
        usart_send_string("getKeyPad - ");
        usart_send(c);
        usart_send('\n');

        _delay_ms(100);
    }
}
