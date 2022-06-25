# started on Sat Jun 25 12:52:13 2022


 Performance counter stats for './exe/rle_exe' (50 runs):

              0,57 msec task-clock:u              #    0,608 CPUs utilized            ( +-  6,14% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                52      page-faults:u             #   95,313 K/sec                    ( +-  0,36% )
           943.042      cycles:u                  #    1,729 GHz                      ( +-  3,04% )
            81.701      stalled-cycles-frontend:u #   10,98% frontend cycles idle     ( +-  2,26% )
            86.452      stalled-cycles-backend:u  #   11,62% backend cycles idle      ( +- 10,97% )
         1.319.491      instructions:u            #    1,77  insn per cycle         
                                                  #    0,22  stalled cycles per insn  ( +-  0,00% )
           181.427      branches:u                #  332,546 M/sec                    ( +-  0,00% )
     <not counted>      branch-misses:u                                               (0,00%)

         0,0009353 +- 0,0000568 seconds time elapsed  ( +-  6,08% )

Some events weren't counted. Try disabling the NMI watchdog:
	echo 0 > /proc/sys/kernel/nmi_watchdog
	perf stat ...
	echo 1 > /proc/sys/kernel/nmi_watchdog
