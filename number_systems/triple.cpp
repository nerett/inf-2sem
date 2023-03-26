#include "stdlib.h"
#include "stdio.h"
#include "string.h"

int main()
{
    char* triple = NULL;

    scanf( "%ms[0-9]", &triple );
    long long length = strlen( triple );

    char* str_end = triple + length;
    long long decimal = strtoll( triple, &str_end, 3 );

    printf( "%lld\n", decimal );

    free( triple );

    return 0;
}