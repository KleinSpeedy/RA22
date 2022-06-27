# started on Mon Jun 27 17:21:31 2022


 Performance counter stats for './exe/rle_exe_O1' (50 runs):

              1,04 msec task-clock                #    0,402 CPUs utilized            ( +-  5,74% )
                 0      context-switches          #    0,077 K/sec                    ( +- 60,19% )
                 0      cpu-migrations            #    0,000 K/sec                  
                45      page-faults               #    0,044 M/sec                    ( +-  0,32% )
         1.109.529      cycles                    #    1,070 GHz                      ( +-  0,84% )  (83,99%)
           253.048      stalled-cycles-frontend   #   22,81% frontend cycles idle     ( +-  1,44% )
           303.026      stalled-cycles-backend    #   27,31% backend cycles idle      ( +-  1,60% )
         1.128.446      instructions              #    1,02  insn per cycle         
                                                  #    0,27  stalled cycles per insn  ( +-  0,13% )
     <not counted>      branches                                                      ( +- 27,18% )  (16,01%)
     <not counted>      branch-misses                                                 (0,00%)

          0,002583 +- 0,000131 seconds time elapsed  ( +-  5,07% )

