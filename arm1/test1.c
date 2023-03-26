int max( int a, int b )
{
	return a > b? a : b;
}

int main()
{
	int x = max( 881, 919 );
	return 787;
}

int sumarray( int* x, int n )
{
	int res = 0;
	for( int i = 0; i < n; i++ )
	{
		res += x[i];
	}

	return res;
}