# started on Mon Jun 27 15:22:24 2022


 Performance counter stats for './exe/rle_exe_O1' (50 runs):

              0,67 msec task-clock:u              #    0,561 CPUs utilized            ( +-  2,59% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                50      page-faults:u             #   80,558 K/sec                    ( +-  0,29% )
           378.901      cycles:u                  #    0,610 GHz                      ( +-  4,31% )
            15.395      stalled-cycles-frontend:u #    4,02% frontend cycles idle     ( +-  2,74% )
            76.593      stalled-cycles-backend:u  #   19,99% backend cycles idle      ( +-  3,60% )
           739.428      instructions:u            #    1,93  insn per cycle         
                                                  #    0,12  stalled cycles per insn  ( +-  0,00% )
           153.417      branches:u                #  247,180 M/sec                    ( +-  0,00% )
     <not counted>      branch-misses:u                                               (0,00%)

         0,0012011 +- 0,0000307 seconds time elapsed  ( +-  2,56% )

Some events weren't counted. Try disabling the NMI watchdog:
	echo 0 > /proc/sys/kernel/nmi_watchdog
	perf stat ...
	echo 1 > /proc/sys/kernel/nmi_watchdog
