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
