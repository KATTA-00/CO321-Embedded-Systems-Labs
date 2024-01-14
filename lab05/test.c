#include <avr/io.h>
#include <util/delay.h>
#include <stdlib.h> // for itoa function

#define FOSC 16000000 // Clock Speed
#define BAUD 9600
#define MYUBRR FOSC / 16 / BAUD - 1
// Define the pin
#define ADC_IN 1

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

// Function to send an integer
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

int main(void)
{
    usart_init(MYUBRR);

    DDRC = DDRC & ~(1 << ADC_IN);
    DDRD = 0xff;

    // ADCSRA |= (1 << ADEN);

    ADCSRA = 0x00;
    ADCSRA = 0b10000111;
    ADMUX = 0x00;
    ADMUX = 0b01000001;

    while (1)
    {

        _delay_ms(500); /* time delay */

        ADCSRA |= (1 << ADSC);

        while (!(ADCSRA & (1 << ADIF)))
        {
        }

        PORTD = ADCL;

        ADCSRA &= ~(1 << ADSC);

        usart_send_int(ADCL);
    }
}
