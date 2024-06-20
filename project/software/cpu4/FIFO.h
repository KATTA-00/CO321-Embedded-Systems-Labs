/*
 * 	FIFO header for shared memory communication between niosII processors
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

// CHANGE THESE NAMES FOR DIFFERENT FIFOS
#ifndef FIFO_H_
#define FIFO_H_

#include <stdio.h>
#include "altera_avalon_fifo_util.h"

#define FIFO_DEPTH 8 // Assuming a FIFO depth of 16
#define ALMOST_EMTY 0
#define ALMOST_FULL FIFO_DEPTH - ALMOST_EMTY

#define IN_BASE_3to4A 0x2104c
#define OUT_BASE_3to4A 0x210b8
#define CONTROL_BASE_3to4A 0x21000

#define IN_BASE_3to4B 0x21028
#define OUT_BASE_3to4B 0x210ac
#define CONTROL_BASE_3to4B 0x21040

#define IN_BASE_3to4C 0x21048
#define OUT_BASE_3to4C 0x210a8
#define CONTROL_BASE_3to4C 0x21020

#define IN_BASE_1to4 0x10001114
#define OUT_BASE_1to4 0x210b0
#define CONTROL_BASE_1to4 0x100010a0

#define IN_BASE_4to5 0x210b4
#define OUT_BASE_4to5 0x21050
#define CONTROL_BASE_4to5 0x21060

// CALL THIS FUNCTION AT THE BEGINING OF BOTH PROGRAMS USING THIS FIFO. CHANGE THE NAME FOR DIFFERENT FIFOS
void FIFO_INIT(int controllBase);

// CHANGE THE NAME FOR DIFFERENT FIFOS
void WRITE_FIFO(int *buffer, int inBase, int controllBase);

// CHANGE THE NAME FOR DIFFERENT FIFOS
int READ_FIFO(int *buffer, int outBase, int controllBase);

#endif /* FIFO_1_H_ */