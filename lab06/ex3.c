#include <avr/io.h>
#include <util/delay.h>

#define FOSC 16000000 // Clock Speed
#define BAUD 9600
#define MYUBRR FOSC / 16 / BAUD - 1

#define KEY 3

void usart_init(unsigned int ubrr)
{
    /* Set baud rate */
    UBRR0H = (unsigned char)(ubrr >> 8);
    UBRR0L = (unsigned char)(ubrr & 0xFF);

    /* Enable receiver and transmitter */
    UCSR0B = (1 << RXEN0) | (1 << TXEN0);

    /* Set frame format: 8 data bits, 1 stop bit */
    UCSR0C = (3 << UCSZ00);
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
    while (c != '\n')
    {
        sen[i] = c;
        c = usart_receive();
        i++;
    }

    sen[i++] = '\n';
    sen[i] = '\0';
}

int checkValid(char c)
{
    /* Check if the character is a valid alphabet character */
    if (c < 65 || ((c > 90) && (c < 97)) || c > 122)
        return 0;

    return 1;
}

unsigned char getCipher(unsigned char c)
{
    /* If the character is not a valid alphabet character, return it unchanged */
    if (checkValid(c) == 0)
        return c;

    /* Encrypt the character using a simple Caesar cipher with the defined key */
    unsigned char new_c = c + KEY;

    /* Wrap around to the beginning of the alphabet if needed */
    if (checkValid(new_c) == 0)
        new_c -= 26;

    return new_c;
}

void main(void)
{
    usart_init(MYUBRR);

    char sentence[1024];
    int length;

    while (1)
    {
        /* Receive a string and its length */
        length = usart_receive_string(sentence);
        length--;

        /* Encrypt each character in the string using the Caesar cipher */
        for (int i = 0; i < length; i++)
            sentence[i] = getCipher(sentence[i]);

        /* Send the encrypted string back */
        usart_send_string(sentence);
    }
}
