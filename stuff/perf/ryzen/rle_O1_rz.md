# started on Mon Jun 27 16:32:06 2022


 Performance counter stats for './exe/rle_exe_O1' (50 runs):

              0,71 msec task-clock:u              #    0,540 CPUs utilized            ( +-  2,62% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                51      page-faults:u             #   75,741 K/sec                    ( +-  0,37% )
           416.546      cycles:u                  #    0,619 GHz                      ( +-  5,68% )
            18.233      stalled-cycles-frontend:u #    4,55% frontend cycles idle     ( +-  2,63% )
            86.057      stalled-cycles-backend:u  #   21,46% backend cycles idle      ( +-  5,75% )
           739.429      instructions:u            #    1,84  insn per cycle         
                                                  #    0,16  stalled cycles per insn  ( +-  0,00% )
           153.418      branches:u                #  227,845 M/sec                    ( +-  0,00% )
     <not counted>      branch-misses:u                                               (0,00%)

         0,0013162 +- 0,0000295 seconds time elapsed  ( +-  2,24% )

Some events weren't counted. Try disabling the NMI watchdog:
	echo 0 > /proc/sys/kernel/nmi_watchdog
	perf stat ...
	echo 1 > /proc/sys/kernel/nmi_watchdog
