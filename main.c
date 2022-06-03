#include "rle_arr.h"
#include "rle_unpack.h"

//1 char[] with 960009 chars
// random string with 120k chars * 8
char test1[] = "0110001101100111011000010110001101100001011101000110001101100011011000010110001101110100011000010110000101100011011000010111010001100001011000110110001101110100011000010110001101110100011000010110011101110100011000010110001101100011011101000110001101100001011001110110000101100011011000110110001101100011011000110110001101110100011000010110011101110100011101000111010001100111011001110110000101110100011101000110011101110100011001110110001101100001011101000110011101110100011000110111010001100001011000010111010001100011011000010110000101100111011001110111010001100001011000010110001101100001011000110110000101100111011000110110000101100011011000010111010001110100011101000110001101100001011001110110001101100111011101000111010001110100011101000111010001110100011101000110000101100011011101000110011101100111011000010110001101100001011000010110011101110100011101000110011101100111011001110111010001100111011000010111010001100011011000010110000101100011011001110110001101100011011000110110000101100011011000110110011101100011011000110110000101110100011001110111010001100111011101000110011101100001011000110110001101100111011101000110000101100001011000110110001101110100011101000110011101100011011101000110001101100001011001110111010001100111011000110110011101110100011101000110011101100111011000010111010001100111011001110111010001100001011000110110001101100001011101000110001101100001011101000110011101100111011000010110011101100111011001110111010001100111011000010111010001100011011101000111010001100011011000110111010001110100011000010110001101100001011000010110001101100001011001110110000101100011011101000111010001100011011000010110000101100001011000110110011101100001011000110110001101100011011001110111010001100001011000110110000101100011011101000111010001100111011101000110000101100011011101000111010001110100011000010110011101100011011000110110000101100011011001110111010001100001011001110110001101100111011000010110001101100011011000110110011101100011011000010110001101100001011101000110011101100011011001110111010001100011011001110110011101100001011001110110001101100001011000010110001101100011011000010110000101100001011001110111010001110100011101000111010001110100011001110110000101100011011000010110001101110100011001110110000101110100011000110110000101100001011000110110011101100011011101000110011101100111011001110110000101100011011000110110001101100001011001110110000101100011011101000110001101100111011101000110001101100011011001110110011101100001011001110111010001100011011101000110001101100001011101000110000101100001011000010110001101100011011101000110000101100001011000110111010001100111011000110110001101100011011101000111010001100011011101000110011101100001011000110110000101100011011000110110011101100111011001110110001101100111011001110110001101100011011000110111010001100111011000010110001101110100011000110110011101100001011001110110001101110100011001110110000101110100011000110110001101100001011000010111010001100111011000010110000101110100011001110111010001100001011101000110001101100111011000110110011101100011011001110110000101100011011001110110001101100011011000110110001101110100011001110111010001100111011000110111010001110100011000010111010001110100011101000110000101100111011000110110001101100111011000010110001101100011011101000110001101110100011000110110001101110100011000110111010001100111011000010110001101100001011000110110001101110100011000110110001101100001011101000111010001100001011001110110001101100001011101000110011101100111011000110110000101100111011000010110011101100111011000110110000101110100011000010111010001100111011101000111010001100011011000110110011101100001011101000110001101100001011000110110011101110100011101000110001101100001011101000110011101100111011000110110000101100111011001110111010001100001011000110110011101110100011000010110001101110100011001110111010001100011011000010110000101100011011000010110011101110100011000110110011101100001011000010110000101100001011101000111010001100111011000110111010001100111011000010110011101110100011101000110011101110100011101000110000101100001011101000111010001100011011000010111010001110100011000010110001101100001011001110110011101110100011101000110000101100001011000010110001101100011011000010110001101110100011000110110000101100011011000110110011101100001011000110110011101100001011000010110001101110100011000010111010001110100011101000111010001100111011001110110001101100111011000110110000101100011011000110110001101100011011001110110001101100111011000110110001101110100011101000111010001100011011001110110001101100011011000010110000101100111011001110111010001100111011001110111010001110100011101000110001101110100011001110111010001100111011101000110001101110100011000010111010001110100011000010110011101100001011101000110001101100011011101000110001101100001011001110110011101100001011000010111010001100011011000110111010001100111011101000111010001100111011001110110011101100001011101000110001101100001011101000110011101100001011101000110000101110100011101000110000101110100011000010110011101100011011101000110001101100001011101000111010001100001011000110110011101110100011000010110011101100111011000110110001101100111011001110110000101100111011101000110011101100001011000110110011101110100011101000110000101110100011001110110001101100001011101000110001101110100011000110111010001100111011000010110001101100011011000110111010001100111011101000111010001100011011101000111010001100001011000110110000101100111011000010110001101110100011101000110000101110100011000010110000101100111011101000110011101100001011001110111010001100001011000110110011101100111011001110110000101100001011001110110011101110100011101000110001101100001011000110110000101110100011000010110000101110100011101000111010001110100011101000110000101110100011101000111010001100001011101000110011101100011011101000110001101100111011000010111010001100011011000010110001101100111011000010110000101100001011000010111010001100011011000010110000101100011011001110111010001110100011101000110000101100001011000110110000101100011011001110111010001100001011000110110000101110100011001110111010001100111011001110111010001100111011101000110000101100001011101000110001101100001011000110111010001100111011101000110011101110100011001110110000101110100011001110110001101110100011101000110000101100001011000110110011101110100011101000111010001100111011001110110011101110100011101000111010001100001011101000110011101100011011000010110001101100001011000010111010001100001011000010111010001100111011000010110000101110100011001110110011101100011011001110110001101100001011101000110000101100001011101000111010001110100011000010110001101100001011000010110011101100111011101000111010001110100011001110110001101100011011101000110001101100111011101000110000101100111011001110110011101100011011001110110011101100111011101000110001101100001011000010110001101110100011000010110001101110100011000010110000101100111011001110110000101100011011000010110011101100011011001110110001101100011011000110111010001100001011001110110001101100011011101000110000101100011011001110110000101100011011000010111010001100111011000010110000101100001011000110110000101100001011000010110000101110100011000110110000101100001011101000110001101100001011000010111010001100011011001110110011101110100011001110111010001100001011001110110001101100011011000110110011101100011011000110110011101100111011101000111010001100001011000010110000101110100011101000111010001100001011000010110001101110100011001110111010001110100011000010110001101110100011000010110011101100111011000110110001101100001011101000111010001110100011000110111010001100011011001110111010001100011011001110110001101110100011001110111010001110100011000110110011101110100011000110110001101100001011000110110001101110100011000010110001101110100011000010110011101100111011101000110001101100111011000110110000101100011011000010110000101100111011001110110000101100001011001110110001101100011011000010110000101110100011101000111010001100111011000010111010001100011011000010111010001100001011001110111010001110100011001110111010001100011011001110110000101100011011000010111010001100011011000110110000101100011011101000110000101100001011000110110000101110100011000010110001101100011011101000110000101100011011101000110000101100111011101000110000101100011011000110111010001100011011000010110011101100001011000110110001101100011011000110110001101100011011101000110000101100111011101000111010001110100011001110110011101100001011101000111010001100111011101000110011101100011011000010111010001100111011101000110001101110100011000010110000101110100011000110110000101100001011001110110011101110100011000010110000101100011011000010110001101100001011001110110001101100001011000110110000101110100011101000111010001100011011000010110011101100011011001110111010001110100011101000111010001110100011101000111010001100001011000110111010001100111011001110110000101100011011000010110000101100111011101000111010001100111011001110110011101110100011001110110000101110100011000110110000101100001011000110110011101100011011000110110001101100001011000110110001101100111011000110110001101100001011101000110011101110100011001110111010001100111011000010110001101100011011001110111010001100001011000010110001101100011011101000111010001100111011000110111010001100011011000010110011101110100011001110110001101100111011101000111010001100111011001110110000101110100011001110110011101110100011000010110001101100011011000010111010001100011011000010111010001100111011001110110000101100111011001110110011101110100011001110110000101110100011000110111010001110100011000110110001101110100011101000110000101100011011000010110000101100011011000010110011101100001011000110111010001110100011000110110000101100001011000010110001101100111011000010110001101100011011000110110011101110100011000010110001101100001011000110111010001110100011001110111010001100001011000110111010001110100011101000110000101100111011000110110001101100001011000110110011101110100011000010110011101100011011001110110000101100011011000110110001101100111011000110110000101100011011000010111010001100111011000110110011101110100011000110110011101100111011000010110011101100011011000010110000101100011011000110110000101100001011000010110011101110100011101000111010001110100011101000110011101100001011000110110000101100011011101000110011101100001011101000110001101100001011000010110001101100111011000110111010001100111011001110110011101100001011000110110001101100011011000010110011101100001011000110111010001100011011001110111010001100011011000110110011101100111011000010110011101110100011000110111010001100011011000010111010001100001011000010110000101100011011000110111010001100001011000010110001101110100011001110110001101100011011000110111010001110100011000110111010001100111011000010110001101100001011000110110001101100111011001110110011101100011011001110110011101100011011000110110001101110100011001110110000101100011011101000110001101100111011000010110011101100011011101000110011101100001011101000110001101100011011000010110000101110100011001110110000101100001011101000110011101110100011000010111010001100011011001110110001101100111011000110110011101100001011000110110011101100011011000110110001101100011011101000110011101110100011001110110001101110100011101000110000101110100011101000111010001100001011001110110001101100011011001110110000101100011011000110111010001100011011101000110001101100011011101000110001101110100011001110110000101100011011000010110001101100011011101000110001101100011011000010111010001110100011000010110011101100011011000010111010001100111011001110110001101100001011001110110000101100111011001110110001101100001011101000110000101110100011001110111010001110100011000110110001101100111011000010111010001100011011000010110001101100111011101000111010001100011011000010111010001100111011001110110001101100001011001110110011101110100011000010110001101100111011101000110000101100011011101000110011101110100011000110110000101100001011000110110000101100111011101000110001101100111011000010110000101100001011000010111010001110100011001110110001101110100011001110110000101100111011101000111010001100111011101000111010001100001011000010111010001110100011000110110000101110100011101000110000101100011011000010110011101100111011101000111010001100001011000010110000101100011011000110110000101100011011101000110001101100001011000110110001101100111011000010110001101100111011000010110000101100011011101000110000101110100011101000111010001110100011001110110011101100011011001110110001101100001011000110110001101100011011000110110011101100011011001110110001101100011011101000111010001110100011000110110011101100011011000110110000101100001011001110110011101110100011001110110011101110100011101000111010001100011011101000110011101110100011001110111010001100011011101000110000101110100011101000110000101100111011000010111010001100011011000110111010001100011011000010110011101100111011000010110000101110100011000110110001101110100011001110111010001110100011001110110011101100111011000010111010001100011011000010111010001100111011000010111010001100001011101000111010001100001011101000110000101100111011000110111010001100011011000010111010001110100011000010110001101100111011101000110000101100111011001110110001101100011011001110110011101100001011001110111010001100111011000010110001101100111011101000111010001100001011101000110011101100011011000010111010001100011011101000110001101110100011001110110000101100011011000110110001101110100011001110111010001110100011000110111010001110100011000010110001101100001011001110110000101100011011101000111010001100001011101000110000101100001011001110111010001100111011000010110011101110100011000010110001101100111011001110110011101100001011000010110011101100111011101000111010001100011011000010110001101100001011101000110000101100001011101000111010001110100011101000111010001100001011101000111010001110100011000010111010001100111011000110111010001100011011001110110000101110100011000110110000101100011011001110110000101100001011000010110000101110100011000110110000101100001011000110110011101110100011101000111010001100001011000010110001101100001011000110110011101110100011000010110001101100001011101000110011101110100011001110110011101110100011001110111010001100001011000010111010001100011011000010110001101110100011001110111010001100111011101000110011101100001011101000110011101100011011101000111010001100001011000010110001101100111011101000111010001110100011001110110011101100111011101000111010001110100011000010111010001100111011000110110000101100011011000010110000101110100011000010110000101110100011001110110000101100001011101000110011101100111011000110110011101100011011000010111010001100001011000010111010001110100011101000110000101100011011000010110000101100111011001110111010001110100011101000110011101100011011000110111010001100011011001110111010001100001011001110110011101100111011000110110011101100111011001110111010001100011011000010110000101100011011101000110000101100011011101000110000101100001011001110110011101100001011000110110000101100111011000110110011101100011011000110110001101110100011000010110011101100011011000110111010001100001011000110110011101100001011000110110000101110100011001110110000101100001011000010110001101100001011000010110000101100001011101000110001101100001011000010111010001100011011000010110000101110100011000110110011101100111011101000110011101110100011000010110011101100011011000110110001101100111011000110110001101100111011001110111010001110100011000010110000101100001011101000111010001110100011000010110000101100011011101000110011101110100011101000110000101100011011101000110000101100111011001110110001101100011011000010111010001110100011101000110001101110100011000110110011101110100011000110110011101100011011101000110011101110100011101000110001101100111011101000110001101100011011000010110001101100011011101000110000101100011011101000110000101100111011001110111010001100011011001110110001101100001011000110110000101100001011001110110011101100001011000010110011101100011011000110110000101100001011101000111010001110100011001110110000101110100011000110110000101110100011000010110011101110100011101000110011101110100";

int main()
{
    char* compressed = rle_array(test1);
    printf("%s\n",compressed);
    printf("%s\n",rle_unpack(compressed));
    return 0;
}
