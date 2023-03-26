#include "stdlib.h"
#include "stdio.h"

int main()
{
    FILE* input_file = fopen( "input.txt", "r" );

    unsigned long long number = 0;

    fscanf( input_file, "%lld", &number );
    fclose( input_file );

    FILE* output_file = fopen( "output.txt", "w" );

    fprintf( output_file, "%llo", number );
    fclose( output_file );


    return 0;
}
