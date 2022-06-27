# started on Mon Jun 27 17:43:05 2022


 Performance counter stats for './exe/rle_exe_O3' (50 runs):

              2,07 msec task-clock:u              #    0,949 CPUs utilized            ( +-  1,43% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                52      page-faults:u             #   46,062 K/sec                    ( +-  0,34% )
           681.701      cycles:u                  #    0,604 GHz                      ( +-  4,20% )
           200.310      stalled-cycles-frontend:u #   32,77% frontend cycles idle     ( +-  0,48% )
           143.012      stalled-cycles-backend:u  #   23,40% backend cycles idle      ( +-  0,65% )
           641.609      instructions:u            #    1,05  insn per cycle         
                                                  #    0,33  stalled cycles per insn  ( +-  0,00% )
     <not counted>      branches:u                                                    (0,00%)
     <not counted>      branch-misses:u                                               (0,00%)

         0,0021848 +- 0,0000550 seconds time elapsed  ( +-  2,52% )

