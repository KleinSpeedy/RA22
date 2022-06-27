# started on Mon Jun 27 17:43:04 2022


 Performance counter stats for './exe/rle_exe_O2' (50 runs):

              0,95 msec task-clock:u              #    0,419 CPUs utilized            ( +-  6,34% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                49      page-faults:u             #   42,014 K/sec                    ( +-  0,27% )
           631.667      cycles:u                  #    0,542 GHz                      ( +-  5,19% )
           197.772      stalled-cycles-frontend:u #   33,03% frontend cycles idle     ( +-  0,54% )
           139.012      stalled-cycles-backend:u  #   23,21% backend cycles idle      ( +-  0,85% )
           609.575      instructions:u            #    1,02  insn per cycle         
                                                  #    0,35  stalled cycles per insn  ( +-  0,00% )
     <not counted>      branches:u                                                    (0,00%)
     <not counted>      branch-misses:u                                               (0,00%)

         0,0022587 +- 0,0000821 seconds time elapsed  ( +-  3,64% )

