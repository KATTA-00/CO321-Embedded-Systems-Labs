#include <avr/io.h>
#include <util/delay.h>

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

int main(void)
{
    usart_init(MYUBRR);

    char sentence[1024];
    int length;

    while (1)
    {
        /* Receive a string and its length */
        length = usart_receive_string(sentence);

        EEPROMwriteString(ADDRESS, sentence);

        usart_send_string("Saved to EEPROM!!!");
    }
}
