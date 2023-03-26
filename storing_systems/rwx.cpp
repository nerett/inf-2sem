#include <stdlib.h>
#include <stdio.h>

int main()
{
	int rights = 0;
	scanf( "%o", &rights );

	for( int i = 8; i >= 0; i-- )
	{
		if( rights & ( 1 << i ) )
		{
			switch( i % 3 )
			{
				case 2:
					printf( "r" ); break;
				case 1:
					printf( "w" ); break;
				case 0:	
					printf( "x" ); break;
			}
		}
		else
		{
			printf( "-" );
		}
	}

	return 0;
}