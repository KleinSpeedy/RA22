# started on Sat Jun 25 14:22:31 2022


 Performance counter stats for './exe/exe_O3/rle_exe_O3' (50 runs):

              1,07 msec task-clock:u              #    0,468 CPUs utilized            ( +-  1,76% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                51      page-faults:u             #   46,809 K/sec                    ( +-  0,30% )
           714.102      cycles:u                  #    0,655 GHz                      ( +-  4,85% )
           218.395      stalled-cycles-frontend:u #   37,20% frontend cycles idle     ( +-  0,38% )
           157.385      stalled-cycles-backend:u  #   26,81% backend cycles idle      ( +-  0,58% )
           641.583      instructions:u            #    1,09  insn per cycle         
                                                  #    0,33  stalled cycles per insn  ( +-  0,00% )
     <not counted>      branches:u                                                    (0,00%)
     <not counted>      branch-misses:u                                               (0,00%)

         0,0022938 +- 0,0000937 seconds time elapsed  ( +-  4,09% )

