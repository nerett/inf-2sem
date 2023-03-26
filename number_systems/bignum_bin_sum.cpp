#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main()
{
    char num1[1000] = {0}, num2[1000] = {0};
    char result[2000] = {0};

    scanf( "%s %s", num1, num2 );
    printf( "%s\n\n", num1 );

    int len1 = strlen( num1 );
    int len2 = strlen( num2 );
    int max_length = len1 + len2;

    for( int i = 0; i < max_length; i++ )
    {
        result[i] = num1[i] + num2[i];

        while( result[i] > 1 )
        {
            result[i+1]++;
            result[i]--;
        }
    }

    printf( "%s\n", result );

    return 0;
}