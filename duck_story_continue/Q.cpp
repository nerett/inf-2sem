int calc( int arg1,int arg2 )
{
    int cald = 1;
    
    for( int i = 0; i < arg1; i++ )
    {
        cald *= arg2;
    }
    return cald;
}
