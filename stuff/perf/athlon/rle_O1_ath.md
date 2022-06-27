# started on Mon Jun 27 18:07:21 2022


 Performance counter stats for './exe/rle_exe_O1' (50 runs):

              1,34 msec task-clock:u              #    0,577 CPUs utilized            ( +-  1,40% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                49      page-faults:u             #   43,934 K/sec                    ( +-  0,36% )
           517.801      cycles:u                  #    0,464 GHz                      ( +-  6,33% )  (76,93%)
           177.493      stalled-cycles-frontend:u #   32,34% frontend cycles idle     ( +-  0,57% )
           179.313      stalled-cycles-backend:u  #   32,67% backend cycles idle      ( +-  0,65% )
           721.569      instructions:u            #    1,31  insn per cycle         
                                                  #    0,24  stalled cycles per insn  ( +-  0,00% )
           486.395      branches:u                #  436,106 M/sec                    ( +-  4,23% )  (23,07%)
     <not counted>      branch-misses:u                                               (0,00%)

         0,0023237 +- 0,0000766 seconds time elapsed  ( +-  3,30% )

