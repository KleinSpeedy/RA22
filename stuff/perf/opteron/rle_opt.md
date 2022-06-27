# started on Mon Jun 27 17:21:31 2022


 Performance counter stats for './exe/rle_exe' (50 runs):

              2,00 msec task-clock                #    0,528 CPUs utilized            ( +-  4,41% )
                 0      context-switches          #    0,060 K/sec                    ( +- 45,43% )
                 0      cpu-migrations            #    0,000 K/sec                  
                45      page-faults               #    0,023 M/sec                    ( +-  0,29% )
         1.801.175      cycles                    #    0,902 GHz                      ( +-  1,68% )  (74,18%)
           280.351      stalled-cycles-frontend   #   15,56% frontend cycles idle     ( +-  7,27% )
           790.866      stalled-cycles-backend    #   43,91% backend cycles idle      ( +-  0,60% )
         1.700.639      instructions              #    0,94  insn per cycle         
                                                  #    0,47  stalled cycles per insn  ( +-  0,10% )
           144.020      branches                  #   72,113 M/sec                    ( +- 14,08% )  (25,82%)
     <not counted>      branch-misses                                                 (0,00%)

          0,003780 +- 0,000182 seconds time elapsed  ( +-  4,81% )

