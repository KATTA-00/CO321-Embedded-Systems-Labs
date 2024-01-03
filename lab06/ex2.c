#include <avr/io.h>
#include <util/delay.h>

#define FOSC 16000000 // Clock Speed
#define BAUD 9600
#define MYUBRR FOSC / 16 / BAUD - 1

void usart_init(unsigned int ubrr)
{
    /*Set baud rate */
    UBRR0H = (unsigned char)(ubrr >> 8);
    UBRR0L = (unsigned char)(ubrr & 0xFF);

    /* Enable receiver and transmitter */
    UCSR0B = (1 << RXEN0) | (1 << TXEN0);

    /* Set frame format: 8data, 1stop bit */
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

// Function to send a given string
void usart_send_string(char *string)
{
    while (*string != '\0')
    {
        usart_send(*string++);
    }
}

void main(void)
{
    usart_init(MYUBRR);

    while (1)
    {
        usart_send_string("E/19/124 - M.H. Gunawasekara\n");
        usart_send_string("E/19/129 - K.H. Gunawardana\n");
        usart_send_string("E/19/131 - A.P.K Hansachapa\n");

        _delay_ms(1000);
    }
}
