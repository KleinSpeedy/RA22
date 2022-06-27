# started on Mon Jun 27 16:34:16 2022


 Performance counter stats for './exe/rle_exe_O3' (50 runs):

              1,20 msec task-clock:u              #    0,537 CPUs utilized            ( +-  1,15% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                50      page-faults:u             #   46,597 K/sec                    ( +-  0,29% )
           700.928      cycles:u                  #    0,653 GHz                      ( +-  4,10% )
           209.549      stalled-cycles-frontend:u #   34,27% frontend cycles idle     ( +-  0,51% )
           153.492      stalled-cycles-backend:u  #   25,10% backend cycles idle      ( +-  0,80% )
           641.582      instructions:u            #    1,05  insn per cycle         
                                                  #    0,34  stalled cycles per insn  ( +-  0,00% )
     <not counted>      branches:u                                                    (0,00%)
     <not counted>      branch-misses:u                                               (0,00%)

         0,0022433 +- 0,0000450 seconds time elapsed  ( +-  2,01% )

