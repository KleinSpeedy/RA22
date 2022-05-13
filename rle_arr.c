#include "rle_arr.h"

void rle_array(char str[])
{
    printf("%s \n",str);
    for (int i = 0; str[i] != '\0'; i++) {

        int count = 1;
        while (str[i + 1] != '\0' && str[i] == str[i + 1]) {
            count++;
            i++;
        }
        printf("%d%c",count,str[i]);
    }
    printf("\n");
}

#ifdef ENABLE_LOCAL_MAIN
#include "rle_arr.h"

char* test_daten[] = {
"ctattccatcaacacaagccggtac",
"ccttctcttaatgcgattatctgta",
"gtctttgaaaccagcccgccggtat",
"tttgcggaaaacataatgtcgttgg",
"ctttagttctaacagtgcagaaagt",
"acgaaacataccaatctaactctaa",
"gtgctgcaatatgcggctaacccgg",
"gaccagcaccatcgcttcaccgcac",
"aaagcccgcaagtggccgcgcgtcg",
"cacagtgctacgcgctcgcttatat"
};

int main() 
{
    for (int i = 0; i < 10; i++)
        rle_array(test_daten[i]);
    return 0;
}
#endif