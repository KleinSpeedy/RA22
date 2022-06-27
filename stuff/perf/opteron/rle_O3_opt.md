# started on Mon Jun 27 17:21:32 2022


 Performance counter stats for './exe/rle_exe_O3' (50 runs):

              1,39 msec task-clock                #    0,417 CPUs utilized            ( +-  0,50% )
                 0      context-switches          #    0,043 K/sec                    ( +- 73,92% )
                 0      cpu-migrations            #    0,000 K/sec                  
                46      page-faults               #    0,033 M/sec                    ( +-  0,26% )
         1.090.423      cycles                    #    0,785 GHz                      ( +-  0,40% )  (81,78%)
           279.817      stalled-cycles-frontend   #   25,66% frontend cycles idle     ( +-  0,76% )
           269.723      stalled-cycles-backend    #   24,74% backend cycles idle      ( +-  0,95% )
         1.072.489      instructions              #    0,98  insn per cycle         
                                                  #    0,26  stalled cycles per insn  ( +-  0,12% )
           128.186      branches                  #   92,279 M/sec                    ( +- 17,14% )  (18,22%)
     <not counted>      branch-misses                                                 (0,00%)

         0,0033343 +- 0,0000911 seconds time elapsed  ( +-  2,73% )

