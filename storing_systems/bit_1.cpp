#include <stdlib.h>
#include <stdio.h>

int main( int argc, char** argv )
{
	if( argc < 2 )
	{
		return 0;
	}

	char* end = argv[1] + 2;
	int number = strtol( argv[1], &end, 16 );

	printf( number & 1 ? "ma\n" : "fe\n" );

	return 0;
}