# started on Mon Jun 27 16:34:16 2022


 Performance counter stats for './exe/rle_exe' (50 runs):

              1,48 msec task-clock:u              #    0,548 CPUs utilized            ( +-  2,25% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                49      page-faults:u             #   31,432 K/sec                    ( +-  0,31% )
         1.531.656      cycles:u                  #    0,983 GHz                      ( +-  5,34% )
           182.592      stalled-cycles-frontend:u #   17,25% frontend cycles idle     ( +-  0,59% )
           793.623      stalled-cycles-backend:u  #   75,00% backend cycles idle      ( +-  0,16% )
         1.301.617      instructions:u            #    1,23  insn per cycle         
                                                  #    0,60  stalled cycles per insn  ( +-  0,00% )
     <not counted>      branches:u                                                    (0,00%)
     <not counted>      branch-misses:u                                               (0,00%)

         0,0027077 +- 0,0000660 seconds time elapsed  ( +-  2,44% )

