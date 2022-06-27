# started on Mon Jun 27 18:07:20 2022


 Performance counter stats for './exe/rle_exe' (50 runs):

              2,49 msec task-clock:u              #    0,854 CPUs utilized            ( +-  2,64% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                49      page-faults:u             #   29,148 K/sec                    ( +-  0,23% )
           951.584      cycles:u                  #    0,566 GHz                      ( +-  9,44% )  (78,58%)
           168.090      stalled-cycles-frontend:u #   15,37% frontend cycles idle     ( +-  0,62% )
           769.496      stalled-cycles-backend:u  #   70,35% backend cycles idle      ( +-  0,17% )
         1.301.617      instructions:u            #    1,19  insn per cycle         
                                                  #    0,60  stalled cycles per insn  ( +-  0,00% )
           508.644      branches:u                #  302,567 M/sec                    ( +-  4,40% )  (21,42%)
     <not counted>      branch-misses:u                                               (0,00%)

          0,002910 +- 0,000105 seconds time elapsed  ( +-  3,61% )

