# started on Mon Jun 27 18:07:21 2022


 Performance counter stats for './exe/rle_exe_O2' (50 runs):

              1,03 msec task-clock:u              #    0,467 CPUs utilized            ( +-  3,74% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                51      page-faults:u             #   45,977 K/sec                    ( +-  0,32% )
           682.357      cycles:u                  #    0,615 GHz                      ( +-  4,08% )
           221.088      stalled-cycles-frontend:u #   39,21% frontend cycles idle     ( +-  0,40% )
           166.127      stalled-cycles-backend:u  #   29,46% backend cycles idle      ( +-  0,59% )
           609.577      instructions:u            #    1,08  insn per cycle         
                                                  #    0,35  stalled cycles per insn  ( +-  0,00% )
     <not counted>      branches:u                                                    (0,00%)
     <not counted>      branch-misses:u                                               (0,00%)

         0,0021978 +- 0,0000554 seconds time elapsed  ( +-  2,52% )

