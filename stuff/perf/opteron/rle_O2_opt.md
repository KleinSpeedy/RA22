# started on Mon Jun 27 17:21:31 2022


 Performance counter stats for './exe/rle_exe_O2' (50 runs):

              1,34 msec task-clock                #    0,413 CPUs utilized            ( +-  0,64% )
                 0      context-switches          #    0,030 K/sec                    ( +-100,00% )
                 0      cpu-migrations            #    0,000 K/sec                  
                45      page-faults               #    0,034 M/sec                    ( +-  0,31% )
         1.051.094      cycles                    #    0,783 GHz                      ( +-  0,65% )  (82,06%)
           260.589      stalled-cycles-frontend   #   24,79% frontend cycles idle     ( +-  1,01% )
           266.986      stalled-cycles-backend    #   25,40% backend cycles idle      ( +-  1,23% )
         1.037.665      instructions              #    0,99  insn per cycle         
                                                  #    0,26  stalled cycles per insn  ( +-  0,14% )
     <not counted>      branches                                                      ( +- 19,43% )  (17,94%)
     <not counted>      branch-misses                                                 (0,00%)

         0,0032475 +- 0,0000877 seconds time elapsed  ( +-  2,70% )

