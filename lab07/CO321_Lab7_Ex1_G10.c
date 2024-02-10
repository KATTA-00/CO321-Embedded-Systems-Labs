#include <avr/io.h>
#include <util/delay.h>

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
}
