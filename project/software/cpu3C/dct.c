#include <stdio.h>
#include <stdlib.h> // Added for malloc
#include "datatype.h"
#include "FIFO.h"
#include <time.h>
#include "system.h"

#define DCT_CI_MACRO(n, A) __builtin_custom_ini(ALT_CI_DCT_COMPONENT3C_N + (n & 0b11111), (A))

void delay(int n)
{
	int i;
	for (i = n; i > 0; i--)
	{
		continue;
	}
}

INT16 *data;

/* DCT for One block(8x8) */
void DCT(INT16 *data)
{
	UINT16 i;
	clock_t start_time, end_time;
	int temp;

	/* All values are shifted left by 10 and rounded off to nearest integer */

	// printf("Incoming Data:\n");
	// for (i = 0; i < 64; i++)
	// {
	// 	printf("%4d ", data[i]);
	// 	if ((i + 1) % 8 == 0)
	// 		printf("\n");
	// }

	// start_time = clock();

	for (i = 8; i > 0; i--)
	{
		DCT_CI_MACRO(0, data[0]);
		DCT_CI_MACRO(1, data[1]);
		DCT_CI_MACRO(2, data[2]);
		DCT_CI_MACRO(3, data[3]);
		DCT_CI_MACRO(4, data[4]);
		DCT_CI_MACRO(5, data[5]);
		DCT_CI_MACRO(6, data[6]);
		DCT_CI_MACRO(7, data[7]);

		data[0] = DCT_CI_MACRO(8, 0);
		data[1] = DCT_CI_MACRO(9, 0);
		data[2] = DCT_CI_MACRO(10, 0);
		data[3] = DCT_CI_MACRO(11, 0);
		data[4] = DCT_CI_MACRO(12, 0);
		data[5] = DCT_CI_MACRO(13, 0);
		data[6] = DCT_CI_MACRO(14, 0);
		data[7] = DCT_CI_MACRO(15, 0);

		data += 8;
	}

	data -= 64;

	for (i = 8; i > 0; i--)
	{
		DCT_CI_MACRO(0, data[0]); // Start the DCT component
		DCT_CI_MACRO(1, data[8]);
		DCT_CI_MACRO(2, data[16]);
		DCT_CI_MACRO(3, data[24]);
		DCT_CI_MACRO(4, data[32]);
		DCT_CI_MACRO(5, data[40]);
		DCT_CI_MACRO(6, data[48]);
		DCT_CI_MACRO(7, data[56]);

		data[0] = DCT_CI_MACRO(16, 0);
		data[8] = DCT_CI_MACRO(17, 0);
		data[16] = DCT_CI_MACRO(18, 0);
		data[24] = DCT_CI_MACRO(19, 0);
		data[32] = DCT_CI_MACRO(20, 0);
		data[40] = DCT_CI_MACRO(21, 0);
		data[48] = DCT_CI_MACRO(22, 0);
		data[56] = DCT_CI_MACRO(23, 0);

		data++;
	}

	data -= 8;

	// printf("Transformed Data:\n");
	// for (i = 0; i < 64; i++)
	// {
	// 	printf("%4d ", data[i]);
	// 	if ((i + 1) % 8 == 0)
	// 		printf("\n");
	// }

	// end_time = clock();
	// fprintf(log_file, "Time taken for DCT encoding: %f\n", (double)(end_time - start_time) / CLOCKS_PER_SEC);

	/* write out to queue */
	for (i = 0; i < 64; i++)
	{
		temp = data[i];
		WRITE_FIFO(&temp, IN_BASE_3to4C, CONTROL_BASE_3to4C); // Casting data
	}
}

int main(void)
{
	printf("Starting CPU3\n");

	// log_file = fopen("/mnt/host/files/log.txt", "w");
	// if (log_file == NULL)
	// {
	// 	fprintf(stderr, "Error opening log file\n");
	// 	return 1;
	// }

	/* Initialize FIFO */
	delay(100000);
	FIFO_INIT(CONTROL_BASE_3to4C);
	delay(100000);

	data = (INT16 *)malloc(sizeof(INT16) * 64);

	int row, col, j, i, size, value;

	while (1)
	{
		READ_FIFO(&value, OUT_BASE_1to2C, CONTROL_BASE_1to2C);

		printf("DCT Started\n");
		READ_FIFO(&size, OUT_BASE_1to2C, CONTROL_BASE_1to2C);

		size = size + 128;
		// printf("Size: %d\n", size);

		printf("DCT Going...\n");
		for (i = 0; i < size; i++)
		{

			for (j = 0; j < 64; j++)
			{
				// // Read from the third FIFO
				READ_FIFO(&value, OUT_BASE_1to2C, CONTROL_BASE_1to2C);

				data[j] = value;
			}

			DCT(data);
		}
		printf("DCT Done\n");
	}

	free(data);

	return 0;
}
