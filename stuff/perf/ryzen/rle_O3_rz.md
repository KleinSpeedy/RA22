# started on Mon Jun 27 16:11:09 2022


 Performance counter stats for './exe/rle_exe_O3' (50 runs):

              0,44 msec task-clock:u              #    0,486 CPUs utilized            ( +-  3,60% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                52      page-faults:u             #  107,858 K/sec                    ( +-  0,35% )
           453.374      cycles:u                  #    0,940 GHz                      ( +-  3,65% )
            17.954      stalled-cycles-frontend:u #    4,57% frontend cycles idle     ( +-  1,46% )
            87.601      stalled-cycles-backend:u  #   22,31% backend cycles idle      ( +-  1,75% )
           659.444      instructions:u            #    1,68  insn per cycle         
                                                  #    0,11  stalled cycles per insn  ( +-  0,00% )
           153.420      branches:u                #  318,224 M/sec                    ( +-  0,00% )
     <not counted>      branch-misses:u                                               (0,00%)

         0,0009041 +- 0,0000315 seconds time elapsed  ( +-  3,48% )

Some events weren't counted. Try disabling the NMI watchdog:
	echo 0 > /proc/sys/kernel/nmi_watchdog
	perf stat ...
	echo 1 > /proc/sys/kernel/nmi_watchdog
