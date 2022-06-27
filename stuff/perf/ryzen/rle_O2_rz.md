# started on Mon Jun 27 16:11:09 2022


 Performance counter stats for './exe/rle_exe_O2' (50 runs):

              0,65 msec task-clock:u              #    0,548 CPUs utilized            ( +-  0,67% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                52      page-faults:u             #   78,794 K/sec                    ( +-  0,33% )
           399.288      cycles:u                  #    0,605 GHz                      ( +-  1,49% )
            16.812      stalled-cycles-frontend:u #    4,40% frontend cycles idle     ( +-  0,70% )
            74.516      stalled-cycles-backend:u  #   19,50% backend cycles idle      ( +-  0,69% )
           627.438      instructions:u            #    1,64  insn per cycle         
                                                  #    0,11  stalled cycles per insn  ( +-  0,00% )
           137.420      branches:u                #  208,228 M/sec                    ( +-  0,00% )
     <not counted>      branch-misses:u                                               (0,00%)

        0,00119198 +- 0,00000843 seconds time elapsed  ( +-  0,71% )

Some events weren't counted. Try disabling the NMI watchdog:
	echo 0 > /proc/sys/kernel/nmi_watchdog
	perf stat ...
	echo 1 > /proc/sys/kernel/nmi_watchdog
