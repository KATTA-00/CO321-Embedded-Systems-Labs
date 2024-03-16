#include <avr/io.h>

void spi_init()
{

    // Set MOSI, SCK and SS as output
    DDRB |= (1 << PB3) | (1 << PB5) | (1 << PB2);

    DDRB &= ~(1 << PB4); // MISO as input

    // Enable SPI, Master, set clock rate fck/16
    SPCR |= (1 << SPE) | (1 << MSTR) | (1 << SPR0);

    // set SS to high
    PORTB |= (1 << PB2);

    // disable double speed mode
    SPSR &= ~(1 << SPI2X);
}

void spi_send(char c)
{

    // Start transmission
    SPDR = c;
    char buffer;

    // Wait for transmission complete
    while (!(SPSR & (1 << SPIF)))
        ;

    buffer = SPDR;
}

char spi_receive()
{
    // Start transmission
    SPDR = 0xff;

    // Wait for transmission complete
    while (!(SPSR & (1 << SPIF)))
        ;

    return SPDR;
}

void spi_select()
{
    PORTB &= ~(1 << PB2);
}   

void spi_deselect()
{
    PORTB |= (1 << PB2);
}


void main(){

    spi_init();
    spi_select();
    spi_send(0x01);
    spi_deselect();
    spi_select();
    spi_send(0x02);
    spi_deselect();
    spi_select();
    spi_send(0x03);
    spi_deselect();
    spi_select();
    spi_send(0x04);
    spi_deselect();
    spi_select();
    spi_send(0x05);
    spi_deselect();
    spi_select();
    spi_send(0x06);
    spi_deselect();
    spi_select();
    spi_send(0x07);
    spi_deselect();
    spi_select();
    spi_send(0x08);
    spi_deselect();
    spi_select();
    spi_send(0x09);
    spi_deselect();
    spi_select();
    spi_send(0x0A);
    spi_deselect();
    spi_select();
    spi_send(0x0B);
    spi_deselect();
    spi_select();
    spi_send(0x0C);
    spi_deselect();
    spi_select();
    spi_send(0x0D);
    spi_deselect();
    spi_select();
    spi_send(0x0E);
    spi_deselect();
    spi_select();
    spi_send(0x0F);
    spi_deselect();
    spi_select();
    spi_send(0x10);
    spi_deselect();
    spi_select();
    spi_send(0x11);
    spi_deselect();
    spi_select();
    spi_send(0x12);
    spi_deselect();
    spi_select();
    spi_send(0x13);
    spi_deselect();
    spi_select();
    spi_send(0x14);
    spi_deselect();
    spi_select();
    spi_send(0x15);
    spi_deselect();
    spi_select();
    spi_send(0x16);
    spi_deselect();
    spi_select();
    spi_send(0x17);
    spi_deselect();
    spi_select();
    spi_send(0x18);
    spi_deselect();
    spi_select();
    spi_send(0x19);
    spi_deselect();
    spi_select();
    spi_send(0x1A);
    spi_deselect();
    spi_select();
    spi_send(0x1B);
    spi_deselect();
    spi_select();
    spi_send(0x1C);
    spi_deselect();
    spi_select();
    spi_send(0x1D);


}
