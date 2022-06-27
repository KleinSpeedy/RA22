# started on Mon Jun 27 16:34:16 2022


 Performance counter stats for './exe/rle_exe_O1' (50 runs):

              1,05 msec task-clock:u              #    0,464 CPUs utilized            ( +-  5,54% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                51      page-faults:u             #   43,203 K/sec                    ( +-  0,28% )
           703.703      cycles:u                  #    0,596 GHz                      ( +-  3,64% )
           176.823      stalled-cycles-frontend:u #   28,55% frontend cycles idle     ( +-  0,78% )
           181.788      stalled-cycles-backend:u  #   29,36% backend cycles idle      ( +-  0,78% )
           721.569      instructions:u            #    1,17  insn per cycle         
                                                  #    0,25  stalled cycles per insn  ( +-  0,00% )
     <not counted>      branches:u                                                    (0,00%)
     <not counted>      branch-misses:u                                               (0,00%)

         0,0022662 +- 0,0000869 seconds time elapsed  ( +-  3,84% )

