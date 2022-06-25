# started on Sat Jun 25 12:52:14 2022


 Performance counter stats for './exe/exe_O2/rle_exe_O2' (50 runs):

              0,29 msec task-clock:u              #    0,405 CPUs utilized            ( +-  6,34% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                52      page-faults:u             #  148,703 K/sec                    ( +-  0,32% )
           496.205      cycles:u                  #    1,419 GHz                      ( +-  3,36% )
            27.203      stalled-cycles-frontend:u #    5,70% frontend cycles idle     ( +-  2,25% )
           104.845      stalled-cycles-backend:u  #   21,95% backend cycles idle      ( +-  4,65% )
           627.438      instructions:u            #    1,31  insn per cycle         
                                                  #    0,18  stalled cycles per insn  ( +-  0,00% )
           137.420      branches:u                #  392,976 M/sec                    ( +-  0,00% )
     <not counted>      branch-misses:u                                               (0,00%)

         0,0007138 +- 0,0000373 seconds time elapsed  ( +-  5,23% )

Some events weren't counted. Try disabling the NMI watchdog:
	echo 0 > /proc/sys/kernel/nmi_watchdog
	perf stat ...
	echo 1 > /proc/sys/kernel/nmi_watchdog
