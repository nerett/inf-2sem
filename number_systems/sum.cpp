#include "stdlib.h"
#include "stdio.h"
#include "string.h"

int main( int N_arguments, char** arguments )
{
    long long z = 0;
    if( N_arguments >= 2 )
    {
        char* str_end = arguments[1] + strlen( arguments[1] );
        z = strtoll( arguments[1], &str_end, 27 );
    }


    long double x = 0;
    scanf( "%Lg", &x );


    char* y_27dg = NULL;
    scanf( "%ms[0-9]", &y_27dg );

    char* str_end = y_27dg + strlen( y_27dg );
    long long y = strtoll( y_27dg, &str_end, 16 );


    printf( "%.3Lf\n", x + y + z );


    free( y_27dg );
    return 0;
}