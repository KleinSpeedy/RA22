# started on Mon Jun 27 16:32:06 2022


 Performance counter stats for './exe/rle_exe' (50 runs):

              0,64 msec task-clock:u              #    0,472 CPUs utilized            ( +-  4,70% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                53      page-faults:u             #   72,030 K/sec                    ( +-  0,33% )
           805.346      cycles:u                  #    1,095 GHz                      ( +-  3,25% )
            19.901      stalled-cycles-frontend:u #    2,48% frontend cycles idle     ( +-  6,33% )
           340.419      stalled-cycles-backend:u  #   42,49% backend cycles idle      ( +-  1,96% )
         1.319.517      instructions:u            #    1,65  insn per cycle         
                                                  #    0,27  stalled cycles per insn  ( +-  0,00% )
           181.432      branches:u                #  246,576 M/sec                    ( +-  0,00% )
     <not counted>      branch-misses:u                                               (0,00%)

         0,0013536 +- 0,0000593 seconds time elapsed  ( +-  4,38% )

Some events weren't counted. Try disabling the NMI watchdog:
	echo 0 > /proc/sys/kernel/nmi_watchdog
	perf stat ...
	echo 1 > /proc/sys/kernel/nmi_watchdog
