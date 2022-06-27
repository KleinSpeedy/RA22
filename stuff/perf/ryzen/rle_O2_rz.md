# started on Mon Jun 27 15:22:24 2022


 Performance counter stats for './exe/rle_exe_O2' (50 runs):

              0,47 msec task-clock:u              #    0,410 CPUs utilized            ( +-  3,98% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                52      page-faults:u             #   80,672 K/sec                    ( +-  0,32% )
           520.537      cycles:u                  #    0,808 GHz                      ( +-  2,39% )  (90,77%)
            18.395      stalled-cycles-frontend:u #    4,53% frontend cycles idle     ( +-  1,50% )
           118.488      stalled-cycles-backend:u  #   29,18% backend cycles idle      ( +-  1,68% )
           627.463      instructions:u            #    1,55  insn per cycle         
                                                  #    0,12  stalled cycles per insn  ( +-  0,00% )
           137.424      branches:u                #  213,196 M/sec                    ( +-  0,00% )
                 0      branch-misses:u           #    0,00% of all branches          (9,23%)

         0,0011542 +- 0,0000274 seconds time elapsed  ( +-  2,37% )

