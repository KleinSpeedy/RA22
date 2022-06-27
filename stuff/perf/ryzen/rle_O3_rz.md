# started on Mon Jun 27 15:22:24 2022


 Performance counter stats for './exe/rle_exe_O3' (50 runs):

              0,43 msec task-clock:u              #    0,428 CPUs utilized            ( +-  4,50% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                50      page-faults:u             #   90,588 K/sec                    ( +-  0,32% )
            11.375      cycles:u                  #    0,021 GHz                      ( +-155,46% )  (18,36%)
            16.218      stalled-cycles-frontend:u #    4,15% frontend cycles idle     ( +-  6,95% )
            80.061      stalled-cycles-backend:u  #   20,48% backend cycles idle      ( +-  2,87% )
           659.442      instructions:u            #    1,69  insn per cycle         
                                                  #    0,11  stalled cycles per insn  ( +-  0,00% )
           153.418      branches:u                #  277,955 M/sec                    ( +-  0,00% )
             5.882      branch-misses:u           #    3,83% of all branches          ( +-  6,28% )  (81,64%)

         0,0010020 +- 0,0000340 seconds time elapsed  ( +-  3,39% )

