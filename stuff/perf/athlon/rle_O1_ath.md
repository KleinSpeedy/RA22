# started on Mon Jun 27 17:43:04 2022


 Performance counter stats for './exe/rle_exe_O1' (50 runs):

              0,99 msec task-clock:u              #    0,465 CPUs utilized            ( +-  3,69% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                53      page-faults:u             #   48,472 K/sec                    ( +-  0,27% )
           548.211      cycles:u                  #    0,501 GHz                      ( +-  5,90% )  (61,93%)
           169.985      stalled-cycles-frontend:u #   29,61% frontend cycles idle     ( +-  0,58% )
           174.962      stalled-cycles-backend:u  #   30,47% backend cycles idle      ( +-  0,77% )
           721.571      instructions:u            #    1,26  insn per cycle         
                                                  #    0,24  stalled cycles per insn  ( +-  0,00% )
           316.499      branches:u                #  289,458 M/sec                    ( +-  4,95% )  (38,07%)
     <not counted>      branch-misses:u                                               (0,00%)

         0,0021370 +- 0,0000506 seconds time elapsed  ( +-  2,37% )

