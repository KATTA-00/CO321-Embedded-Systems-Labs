param (
    [string]$FILENAME,
    [string]$PORT = "COM7"
)

# Build
& avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -o "$($FILENAME)" "$($FILENAME).c"
& avr-objcopy -O ihex -R .eeprom "$($FILENAME)" "$($FILENAME).hex"

# Upload
& avrdude -F -V -c arduino -p ATMEGA328P -P $PORT -b 115200 -U flash:w:"$($FILENAME).hex"
