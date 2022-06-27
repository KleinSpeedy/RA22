# started on Mon Jun 27 18:07:21 2022


 Performance counter stats for './exe/rle_exe_O3' (50 runs):

              0,99 msec task-clock:u              #    0,440 CPUs utilized            ( +-  3,09% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                51      page-faults:u             #   45,244 K/sec                    ( +-  0,26% )
           691.525      cycles:u                  #    0,613 GHz                      ( +-  3,37% )
           209.306      stalled-cycles-frontend:u #   33,57% frontend cycles idle     ( +-  0,44% )
           144.145      stalled-cycles-backend:u  #   23,12% backend cycles idle      ( +-  0,77% )
           641.583      instructions:u            #    1,03  insn per cycle         
                                                  #    0,33  stalled cycles per insn  ( +-  0,00% )
     <not counted>      branches:u                                                    (0,00%)
     <not counted>      branch-misses:u                                               (0,00%)

         0,0022475 +- 0,0000550 seconds time elapsed  ( +-  2,45% )

