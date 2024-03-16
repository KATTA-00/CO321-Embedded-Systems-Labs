
void spi_init()
{

    // for slave communication
    DDRB &= ~(1 << PB3);
    DDRB &= ~(1 << PB5);
    DDRB &= ~(1 << PB2);
    DDRB |= (1 << PB4);

    // Enable SPI, Slave, set clock rate fck/16
    SPCR |= (1 << SPE);

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

    // Wait for transmission complete
    while (!(SPSR & (1 << SPIF)))
        ;

    return SPDR;
}
