#include <stdlib.h>
#include <stdio.h>

int main()
{
	/*--------------------ЧТЕНИЕ--------------------*/
	FILE* input_file = fopen( "source", "rb" );

	int size = 0;
	fseek( input_file, 0L, SEEK_END );
	size = ftell( input_file );
	rewind( input_file );

	char* code = ( char* )calloc( sizeof( char ), size );
	fread( code, size, sizeof( char ), input_file );

	fclose( input_file );

	/*--------------------ИЗМЕНЕНИЕ--------------------*/
	char got_byte = 0;
	for( int i = 0; i < size; size++ )
	{
		
	}

	/*--------------------ЗАПИСЬ--------------------*/
	FILE* output_file = fopen( "cracked", "wb" );

	//int size = 0;
	//fseek( input_file, 0L, SEEK_END );
	//size = ftell( input_file );
	//rewind( input_file );

	//char* code = ( char* )calloc( sizeof( char ), size );
	fwrite( code, size, sizeof( char ), input_file );

	fclose( output_file );

	/*--------------------ЗАВЕРШЕНИЕ--------------------*/
	free( code );
	return 0;
}