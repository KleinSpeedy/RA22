# started on Mon Jun 27 16:11:09 2022


 Performance counter stats for './exe/rle_exe_O1' (50 runs):

              0,43 msec task-clock:u              #    0,384 CPUs utilized            ( +-  2,72% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                52      page-faults:u             #   83,294 K/sec                    ( +-  0,30% )
                 0      cycles:u                  #    0,000 GHz                      (16,28%)
            18.726      stalled-cycles-frontend:u #    5,27% frontend cycles idle     ( +-  1,07% )
            97.795      stalled-cycles-backend:u  #   27,54% backend cycles idle      ( +-  1,11% )
           739.430      instructions:u            #    2,08  insn per cycle         
                                                  #    0,10  stalled cycles per insn  ( +-  0,00% )
           153.419      branches:u                #  245,748 M/sec                    ( +-  0,00% )
             5.356      branch-misses:u           #    3,49% of all branches          ( +-  5,74% )  (83,72%)

         0,0011258 +- 0,0000182 seconds time elapsed  ( +-  1,62% )

