#include "rle_unpack.h"

char* rle_unpack(char* str)
{   
    short esc = 0;
    int size = 0;
    int comp_size = 0;
    char first;
    short count;

    for (int i = 0; esc < 2; i++)
    {
        if (str[i] == '\0' && esc == 0) 
        {
            esc++;
            comp_size = i - 1;
        }
        else if ( str[i] == '\0' && esc == 1)
        {
            esc++;
            size = i - 1;
        }
    }
    first = str[comp_size];
    
     
    while (size > 0)
    {
        comp_size--;
        count = str[comp_size];
        for (short i = 0; i < (count - '0'); i++)
        {
            str[size] = first;
            size--;
        }
        if (first == '1') first = '0';
        else first = '1';
    }

    return str;
}
