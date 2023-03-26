#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main()
{
	//char* envp
	int value = 0;
	sscanf( getenv( "CODE" ), "%x", &value );

	//printf( "%d\n", value );
	printf( value & ( 1 << 2 ) ? "ha\n" : "nh\n" );
	return 0;
}