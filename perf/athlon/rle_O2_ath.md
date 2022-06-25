# started on Sat Jun 25 14:22:31 2022


 Performance counter stats for './exe/exe_O2/rle_exe_O2' (50 runs):

              1,32 msec task-clock:u              #    0,590 CPUs utilized            ( +-  1,25% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                50      page-faults:u             #   45,533 K/sec                    ( +-  0,27% )
           650.776      cycles:u                  #    0,593 GHz                      ( +-  3,83% )
           208.190      stalled-cycles-frontend:u #   36,38% frontend cycles idle     ( +-  0,41% )
           147.302      stalled-cycles-backend:u  #   25,74% backend cycles idle      ( +-  0,65% )
           609.577      instructions:u            #    1,07  insn per cycle         
                                                  #    0,35  stalled cycles per insn  ( +-  0,00% )
     <not counted>      branches:u                                                    (0,00%)
     <not counted>      branch-misses:u                                               (0,00%)

         0,0022425 +- 0,0000349 seconds time elapsed  ( +-  1,56% )

