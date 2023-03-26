#include <stdlib.h>
#include <stdio.h>

int main()
{
	unsigned char address[4] = {}, mask[4] = {};
	scanf( "%hhu.%hhu.%hhu.%hhu", &address[0], &address[1], &address[2], &address[3] );
	scanf( "%hhu.%hhu.%hhu.%hhu", &mask[0], &mask[1], &mask[2], &mask[3] );

	printf( "%hhu.%hhu.%hhu.%hhu\n", address[0] | ~mask[0], address[1] | ~mask[1], address[2] | ~mask[2], address[3] | ~mask[3] );
	return 0;
}