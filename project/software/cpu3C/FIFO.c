/*
 * 	FIFO queue for shared memory communication between niosII processors
 *
 *  	DATE		: 18-08-2016
 *      AUTHOR	: Isuru Nawinne
 *
 *	Structure of the FIFO:
 *	___________________________________________________________________________
 *	| 	full	| 	empty	| 	count		|	|	|	|	|	|	|	|	|
 *	| 	?	| 	?		| 	?		|	|	|	|	|	|	|	|	|
 *	___________________________________________________________________________
 */

#include "FIFO.h"

void WRITE_FIFO(int *buffer, int inBase, int controllBase)
{

	// printf("Writing to FIFO : %d\n", altera_avalon_fifo_read_level(controllBase));

	// Check if FIFO is full before writing
	while (altera_avalon_fifo_read_level(controllBase) > ALMOST_FULL - 1)
	{
	}

	// Write data to FIFO
	altera_avalon_fifo_write_fifo(inBase, controllBase, *buffer);
}

int READ_FIFO(int *buffer, int outBase, int controllBase)
{
	// Wait if the FIFO is empty
	// while (altera_avalon_fifo_read_status(FIFO_MEM_IN_CSR_BASE, ALTERA_AVALON_FIFO_STATUS_EMPTY))
	// 	;

	// print
	// printf("Reading from FIFO : %d\n", altera_avalon_fifo_read_level(controllBase));

	while (altera_avalon_fifo_read_level(controllBase) == ALMOST_EMTY)
	{
	}

	// Read the data
	*buffer = altera_avalon_fifo_read_fifo(outBase, controllBase);

	return *buffer;
}

// Initialization
void FIFO_INIT(int controllBase)
{
	altera_avalon_fifo_init(controllBase,
							0,
							ALMOST_EMTY,  // Almost empty threshold
							ALMOST_FULL); // Almost full threshold
}