# started on Mon Jun 27 17:43:04 2022


 Performance counter stats for './exe/rle_exe' (50 runs):

              1,38 msec task-clock:u              #    0,421 CPUs utilized            ( +-  6,32% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                49      page-faults:u             #   25,681 K/sec                    ( +-  0,27% )
         1.521.400      cycles:u                  #    0,797 GHz                      ( +-  4,50% )
           179.625      stalled-cycles-frontend:u #   15,27% frontend cycles idle     ( +-  0,54% )
           777.414      stalled-cycles-backend:u  #   66,09% backend cycles idle      ( +-  0,14% )
         1.301.641      instructions:u            #    1,11  insn per cycle         
                                                  #    0,60  stalled cycles per insn  ( +-  0,00% )
     <not counted>      branches:u                                                    (0,00%)
     <not counted>      branch-misses:u                                               (0,00%)

          0,003284 +- 0,000131 seconds time elapsed  ( +-  3,99% )

