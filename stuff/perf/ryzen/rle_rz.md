# started on Mon Jun 27 15:22:23 2022


 Performance counter stats for './exe/rle_exe' (50 runs):

              0,96 msec task-clock:u              #    0,507 CPUs utilized            ( +-  3,22% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                52      page-faults:u             #   45,970 K/sec                    ( +-  0,34% )
           278.788      cycles:u                  #    0,246 GHz                      ( +- 10,28% )  (32,41%)
            19.279      stalled-cycles-frontend:u #    2,60% frontend cycles idle     ( +- 16,37% )
           300.998      stalled-cycles-backend:u  #   40,58% backend cycles idle      ( +-  2,63% )
         1.319.491      instructions:u            #    1,78  insn per cycle         
                                                  #    0,25  stalled cycles per insn  ( +-  0,00% )
           181.427      branches:u                #  160,387 M/sec                    ( +-  0,00% )
             6.066      branch-misses:u           #    3,34% of all branches          ( +-  7,50% )  (67,59%)

         0,0018904 +- 0,0000454 seconds time elapsed  ( +-  2,40% )

