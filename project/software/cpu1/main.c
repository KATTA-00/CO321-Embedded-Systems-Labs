#include <io.h>
#include "datatype.h"
#include "encoder.h"
#include "FIFO.h"

int main(int argc, char *argv[])
{

	INT8 input_file_name[150];
	FILE *fp;
	UINT32 quality_factor, image_width, image_height;

	delay(100000);
	FIFO_INIT(CONTROL_BASE_1to2A);
	delay(100000);
	FIFO_INIT(CONTROL_BASE_1to2B);
	delay(100000);
	FIFO_INIT(CONTROL_BASE_1to2C);
	delay(100000);
	FIFO_INIT(CONTROL_BASE_1to4);
	delay(100000);
	FIFO_INIT(CONTROL_BASE_1to5);
	delay(100000);
	FIFO_INIT(CONTROL_BASE_1to6);
	delay(100000);

	printf("Starting CPU1\n");

	fp = fopen("/mnt/host/files/param.txt", "r");

	if (fp == NULL)
	{
		fprintf(stderr, "Error opening parameter file\n");
		return 1;
	}

	int img_count = 0;

	while (fscanf(fp, "%s", input_file_name) != EOF)
	{

		printf("\nReading from file: %s\n", input_file_name);

		fscanf(fp, "%d", &quality_factor);
		fscanf(fp, "%d", &image_width);
		fscanf(fp, "%d", &image_height);

		printf("Quality Factor: %d\n", quality_factor);
		printf("Image Width: %d\n", image_width);
		printf("Image Height: %d\n", image_height);

		// send the name to cpu6
		INT8 out;
		INT8 *filename = input_file_name;
		while (*filename != '\0')
		{
			out = *filename;
			WRITE_FIFO(&out, IN_BASE_1to6, CONTROL_BASE_1to6);
			filename++;
		}
		out = '\0';
		WRITE_FIFO(&out, IN_BASE_1to6, CONTROL_BASE_1to6);

		printf("Name Send\n");

		encode_image(input_file_name, quality_factor, image_width, image_height, img_count);

		printf("End of the Image!\n");

		img_count++;
	}

	fclose(fp);

	printf("\nDone!\n");

	return 0;
}
