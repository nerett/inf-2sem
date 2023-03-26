#include <stdio.h>
#include <stdlib.h>
int main()
{
	size_t size;
	char *data;
	int i;
	freopen("source", "rb", stdin);
	fseek(stdin, 0, SEEK_END);
	size = ftell(stdin);
	//printf("size=%u\n", size);
	rewind(stdin);
	data = (char*) malloc(size);
	fread(data, size, 1, stdin);
	for(i=0; i<size-4; i++)
		if( *((unsigned int*)(data + i))  == 0x12345678)
		//printf("Found!\n");
			*((unsigned int*)(data + i))  = 0x90abcdef;
	freopen("cracked", "wb", stdout);
	fwrite(data, size, 1, stdout);
	free(data);
	return 0;
}
		
