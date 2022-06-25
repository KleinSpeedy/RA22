# started on Sat Jun 25 12:52:14 2022


 Performance counter stats for './exe/exe_O1/rle_exe_O1' (50 runs):

              0,21 msec task-clock:u              #    0,311 CPUs utilized            ( +-  8,68% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                51      page-faults:u             #  149,080 K/sec                    ( +-  0,34% )
           353.807      cycles:u                  #    1,034 GHz                      ( +-  4,27% )
            15.498      stalled-cycles-frontend:u #    3,25% frontend cycles idle     ( +- 11,58% )
            58.459      stalled-cycles-backend:u  #   12,27% backend cycles idle      ( +- 10,29% )
           739.429      instructions:u            #    1,55  insn per cycle         
                                                  #    0,15  stalled cycles per insn  ( +-  0,00% )
           153.418      branches:u                #  448,463 M/sec                    ( +-  0,00% )
     <not counted>      branch-misses:u                                               (0,00%)

         0,0006785 +- 0,0000362 seconds time elapsed  ( +-  5,34% )

Some events weren't counted. Try disabling the NMI watchdog:
	echo 0 > /proc/sys/kernel/nmi_watchdog
	perf stat ...
	echo 1 > /proc/sys/kernel/nmi_watchdog
