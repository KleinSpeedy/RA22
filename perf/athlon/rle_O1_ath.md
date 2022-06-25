# started on Sat Jun 25 14:22:31 2022


 Performance counter stats for './exe/exe_O1/rle_exe_O1' (50 runs):

              1,01 msec task-clock:u              #    0,446 CPUs utilized            ( +-  3,14% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                51      page-faults:u             #   45,562 K/sec                    ( +-  0,27% )
           700.389      cycles:u                  #    0,626 GHz                      ( +-  3,64% )
           178.519      stalled-cycles-frontend:u #   29,17% frontend cycles idle     ( +-  0,49% )
           178.822      stalled-cycles-backend:u  #   29,22% backend cycles idle      ( +-  0,61% )
           721.569      instructions:u            #    1,18  insn per cycle         
                                                  #    0,24  stalled cycles per insn  ( +-  0,00% )
     <not counted>      branches:u                                                    (0,00%)
     <not counted>      branch-misses:u                                               (0,00%)

         0,0022725 +- 0,0000515 seconds time elapsed  ( +-  2,27% )

