# started on Sat Jun 25 14:22:30 2022


 Performance counter stats for './exe/rle_exe' (50 runs):

              2,30 msec task-clock:u              #    0,705 CPUs utilized            ( +-  3,52% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                49      page-faults:u             #   26,938 K/sec                    ( +-  0,31% )
           205.731      cycles:u                  #    0,113 GHz                      ( +- 39,08% )  (55,16%)
           165.793      stalled-cycles-frontend:u #   14,52% frontend cycles idle     ( +-  0,59% )
           765.881      stalled-cycles-backend:u  #   67,08% backend cycles idle      ( +-  0,13% )
         1.301.616      instructions:u            #    1,14  insn per cycle         
                                                  #    0,60  stalled cycles per insn  ( +-  0,00% )
           366.678      branches:u                #  201,582 M/sec                    ( +-  5,86% )  (44,84%)
     <not counted>      branch-misses:u                                               (0,00%)

          0,003260 +- 0,000168 seconds time elapsed  ( +-  5,15% )

