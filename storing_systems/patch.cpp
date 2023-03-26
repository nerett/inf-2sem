#include <stdlib.h>
#include <stdio.h>

unsigned int patch( unsigned int incorrect )
{
	unsigned int mask = 131071;
	//unsigned int mask = ( 1 << 17 - 1 );
	unsigned int correct = mask & incorrect;
	return correct;
}

int main()
{
	unsigned int incorrect = 0;
	scanf( "%u", &incorrect );

	unsigned int correct = patch( incorrect );
	printf( "%u\n", correct );
	return 0;
}