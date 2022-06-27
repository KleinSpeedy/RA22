# started on Mon Jun 27 16:34:16 2022


 Performance counter stats for './exe/rle_exe_O2' (50 runs):

              0,96 msec task-clock:u              #    0,416 CPUs utilized            ( +-  1,77% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                49      page-faults:u             #   44,759 K/sec                    ( +-  0,31% )
           650.472      cycles:u                  #    0,594 GHz                      ( +-  4,38% )
           203.709      stalled-cycles-frontend:u #   35,29% frontend cycles idle     ( +-  1,79% )
           151.565      stalled-cycles-backend:u  #   26,26% backend cycles idle      ( +-  2,19% )
           609.600      instructions:u            #    1,06  insn per cycle         
                                                  #    0,37  stalled cycles per insn  ( +-  0,00% )
     <not counted>      branches:u                                                    (0,00%)
     <not counted>      branch-misses:u                                               (0,00%)

         0,0022969 +- 0,0000687 seconds time elapsed  ( +-  2,99% )

