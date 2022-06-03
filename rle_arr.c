#include "rle_arr.h"

char *rle_array(char str[])
{
    char *p_str = str;
    char first = str[0];
    int pos = 0;

    for (int i = 0; str[i] != '\0'; i++)
    {
        int count = 1;
        while (str[i] != '\0' && str[i] == str[i + 1])
        {
            count++;
            i++;
        }
        p_str[pos] = '0' + count;
        pos++;
    }

    p_str[pos] = first;
    p_str[pos+1] = '\0';

    return p_str;
}

#ifdef ENABLE_LOCAL_MAIN
#include "rle_arr.h"

// random string with 1000 chars
char test1[] = "01100011011001110110000101100011011000010111010001100011011000110110000101100011011101000110000101100001011000110110000101110100011000010110001101100011011101000110000101100011011101000110000101100111011101000110000101100011011000110111010001100011011000010110011101100001011000110110001101100011011000110110001101100011011101000110000101100111011101000111010001110100011001110110011101100001011101000111010001100111011101000110011101100011011000010111010001100111011101000110001101110100011000010110000101110100011000110110000101100001011001110110011101110100011000010110000101100011011000010110001101100001011001110110001101100001011000110110000101110100011101000111010001100011011000010110011101100011011001110111010001110100011101000111010001110100011101000111010001100001011000110111010001100111011001110110000101100011011000010110000101100111011101000111010001100111011001110110011101110100011001110110000101110100011000110110000101100001011000110110011101100011011000110110001101100001011000110110001101100111011000110110001101100001011101000110011101110100011001110111010001100111011000010110001101100011011001110111010001100001011000010110001101100011011101000111010001100111011000110111010001100011011000010110011101110100011001110110001101100111011101000111010001100111011001110110000101110100011001110110011101110100011000010110001101100011011000010111010001100011011000010111010001100111011001110110000101100111011001110110011101110100011001110110000101110100011000110111010001110100011000110110001101110100011101000110000101100011011000010110000101100011011000010110011101100001011000110111010001110100011000110110000101100001011000010110001101100111011000010110001101100011011000110110011101110100011000010110001101100001011000110111010001110100011001110111010001100001011000110111010001110100011101000110000101100111011000110110001101100001011000110110011101110100011000010110011101100011011001110110000101100011011000110110001101100111011000110110000101100011011000010111010001100111011000110110011101110100011000110110011101100111011000010110011101100011011000010110000101100011011000110110000101100001011000010110011101110100011101000111010001110100011101000110011101100001011000110110000101100011011101000110011101100001011101000110001101100001011000010110001101100111011000110111010001100111011001110110011101100001011000110110001101100011011000010110011101100001011000110111010001100011011001110111010001100011011000110110011101100111011000010110011101110100011000110111010001100011011000010111010001100001011000010110000101100011011000110111010001100001011000010110001101110100011001110110001101100011011000110111010001110100011000110111010001100111011000010110001101100001011000110110001101100111011001110110011101100011011001110110011101100011011000110110001101110100011001110110000101100011011101000110001101100111011000010110011101100011011101000110011101100001011101000110001101100011011000010110000101110100011001110110000101100001011101000110011101110100011000010111010001100011011001110110001101100111011000110110011101100001011000110110011101100011011000110110001101100011011101000110011101110100011001110110001101110100011101000110000101110100011101000111010001100001011001110110001101100011011001110110000101100011011000110111010001100011011101000110001101100011011101000110001101110100011001110110000101100011011000010110001101100011011101000110001101100011011000010111010001110100011000010110011101100011011000010111010001100111011001110110001101100001011001110110000101100111011001110110001101100001011101000110000101110100011001110111010001110100011000110110001101100111011000010111010001100011011000010110001101100111011101000111010001100011011000010111010001100111011001110110001101100001011001110110011101110100011000010110001101100111011101000110000101100011011101000110011101110100011000110110000101100001011000110110000101100111011101000110001101100111011000010110000101100001011000010111010001110100011001110110001101110100011001110110000101100111011101000111010001100111011101000111010001100001011000010111010001110100011000110110000101110100011101000110000101100011011000010110011101100111011101000111010001100001011000010110000101100011011000110110000101100011011101000110001101100001011000110110001101100111011000010110001101100111011000010110000101100011011101000110000101110100011101000111010001110100011001110110011101100011011001110110001101100001011000110110001101100011011000110110011101100011011001110110001101100011011101000111010001110100011000110110011101100011011000110110000101100001011001110110011101110100011001110110011101110100011101000111010001100011011101000110011101110100011001110111010001100011011101000110000101110100011101000110000101100111011000010111010001100011011000110111010001100011011000010110011101100111011000010110000101110100011000110110001101110100011001110111010001110100011001110110011101100111011000010111010001100011011000010111010001100111011000010111010001100001011101000111010001100001011101000110000101100111011000110111010001100011011000010111010001110100011000010110001101100111011101000110000101100111011001110110001101100011011001110110011101100001011001110111010001100111011000010110001101100111011101000111010001100001011101000110011101100011011000010111010001100011011101000110001101110100011001110110000101100011011000110110001101110100011001110111010001110100011000110111010001110100011000010110001101100001011001110110000101100011011101000111010001100001011101000110000101100001011001110111010001100111011000010110011101110100011000010110001101100111011001110110011101100001011000010110011101100111011101000111010001100011011000010110001101100001011101000110000101100001011101000111010001110100011101000111010001100001011101000111010001110100011000010111010001100111011000110111010001100011011001110110000101110100011000110110000101100011011001110110000101100001011000010110000101110100011000110110000101100001011000110110011101110100011101000111010001100001011000010110001101100001011000110110011101110100011000010110001101100001011101000110011101110100011001110110011101110100011001110111010001100001011000010111010001100011011000010110001101110100011001110111010001100111011101000110011101100001011101000110011101100011011101000111010001100001011000010110001101100111011101000111010001110100011001110110011101100111011101000111010001110100011000010111010001100111011000110110000101100011011000010110000101110100011000010110000101110100011001110110000101100001011101000110011101100111011000110110011101100011011000010111010001100001011000010111010001110100011101000110000101100011011000010110000101100111011001110111010001110100011101000110011101100011011000110111010001100011011001110111010001100001011001110110011101100111011000110110011101100111011001110111010001100011011000010110000101100011011101000110000101100011011101000110000101100001011001110110011101100001011000110110000101100111011000110110011101100011011000110110001101110100011000010110011101100011011000110111010001100001011000110110011101100001011000110110000101110100011001110110000101100001011000010110001101100001011000010110000101100001011101000110001101100001011000010111010001100011011000010110000101110100011000110110011101100111011101000110011101110100011000010110011101100011011000110110001101100111011000110110001101100111011001110111010001110100011000010110000101100001011101000111010001110100011000010110000101100011011101000110011101110100011101000110000101100011011101000110000101100111011001110110001101100011011000010111010001110100011101000110001101110100011000110110011101110100011000110110011101100011011101000110011101110100011101000110001101100111011101000110001101100011011000010110001101100011011101000110000101100011011101000110000101100111011001110111010001100011011001110110001101100001011000110110000101100001011001110110011101100001011000010110011101100011011000110110000101100001011101000111010001110100011001110110000101110100011000110110000101110100011000010110011101110100011101000110011101110100";

int main()
{
    char* compressed = rle_array(test1);
    //printf("%s\n",compressed);
    return 0;
}

#endif