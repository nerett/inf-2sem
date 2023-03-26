#include <stdlib.h>
#include <stdio.h>

int main()
{
	int value_1 = 0, value_2;
	scanf( "%x %x", &value_1, &value_2 );
	return value_1 ^ value_2;
}