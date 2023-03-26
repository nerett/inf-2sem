#include <stdlib.h>
#include <stdio.h>

int main()
{
	char value = 0;
	scanf( "%hhd", &value );

	for( int i = 7; i >= 0; i-- )
	{
		printf( value & ( 1 << i )? "1" : "0" );
	}
	printf( "\n" );
	return 0;
}