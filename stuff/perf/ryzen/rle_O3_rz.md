# started on Mon Jun 27 16:32:06 2022


 Performance counter stats for './exe/rle_exe_O3' (50 runs):

              0,46 msec task-clock:u              #    0,465 CPUs utilized            ( +-  4,17% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                54      page-faults:u             #  105,697 K/sec                    ( +-  0,34% )
           450.911      cycles:u                  #    0,883 GHz                      ( +-  2,68% )
            19.770      stalled-cycles-frontend:u #    4,66% frontend cycles idle     ( +-  2,26% )
            83.534      stalled-cycles-backend:u  #   19,67% backend cycles idle      ( +-  3,59% )
           659.447      instructions:u            #    1,55  insn per cycle         
                                                  #    0,11  stalled cycles per insn  ( +-  0,00% )
           153.423      branches:u                #  300,302 M/sec                    ( +-  0,00% )
     <not counted>      branch-misses:u                                               (0,00%)

         0,0009817 +- 0,0000333 seconds time elapsed  ( +-  3,39% )

Some events weren't counted. Try disabling the NMI watchdog:
	echo 0 > /proc/sys/kernel/nmi_watchdog
	perf stat ...
	echo 1 > /proc/sys/kernel/nmi_watchdog
