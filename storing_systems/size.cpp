#include <stdlib.h>
#include <stdio.h>
#include <string.h>

const int START = 1;

int main()
{
	char string[30] = {};
	scanf( "%s", string );
	int i = START;

	//printf( "%s\n", string );

	if( !strcmp( string, "float" ) )
	{
		float test = 1;
		float one = 1;
		i = START;
		while( ( test + ( one / ( 1 << i ))) > test )
		{
			i++;
		}
	}
	else if( !strcmp( string, "double" ) )
	{
		double test = 1;
		double one = 1;
		unsigned long long ull = 1;
		i = START;
		while( ( test + ( one / ( ull << i ))) > test )
		{
			i++;
		}
	}
	else if( !strcmp( string, "long" ) )
	{
		long double test = 1;
		long double one = 1.0;
		unsigned long long ull = 1;
		i = START;
		while( ( test + ( one /= 2.0 )) > test )
		{
			i++;
		}
		//i++;
	}

	printf( "%d\n", i - START );
	return 0;
}