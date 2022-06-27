# started on Mon Jun 27 16:32:06 2022


 Performance counter stats for './exe/rle_exe_O2' (50 runs):

              0,63 msec task-clock:u              #    0,479 CPUs utilized            ( +-  2,88% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                49      page-faults:u             #   70,159 K/sec                    ( +-  0,29% )
           384.823      cycles:u                  #    0,551 GHz                      ( +-  3,87% )
            15.785      stalled-cycles-frontend:u #    3,82% frontend cycles idle     ( +-  3,15% )
            66.193      stalled-cycles-backend:u  #   16,01% backend cycles idle      ( +-  6,10% )
           627.435      instructions:u            #    1,52  insn per cycle         
                                                  #    0,14  stalled cycles per insn  ( +-  0,00% )
           137.417      branches:u                #  196,756 M/sec                    ( +-  0,00% )
     <not counted>      branch-misses:u                                               (0,00%)

         0,0013225 +- 0,0000288 seconds time elapsed  ( +-  2,18% )

Some events weren't counted. Try disabling the NMI watchdog:
	echo 0 > /proc/sys/kernel/nmi_watchdog
	perf stat ...
	echo 1 > /proc/sys/kernel/nmi_watchdog
