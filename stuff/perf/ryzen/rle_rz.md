# started on Mon Jun 27 16:11:08 2022


 Performance counter stats for './exe/rle_exe' (50 runs):

              0,63 msec task-clock:u              #    0,522 CPUs utilized            ( +-  4,83% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                51      page-faults:u             #   68,720 K/sec                    ( +-  0,38% )
           775.487      cycles:u                  #    1,045 GHz                      ( +-  3,42% )
            23.522      stalled-cycles-frontend:u #    3,46% frontend cycles idle     ( +-  1,95% )
           321.476      stalled-cycles-backend:u  #   47,27% backend cycles idle      ( +-  0,72% )
         1.319.516      instructions:u            #    1,94  insn per cycle         
                                                  #    0,23  stalled cycles per insn  ( +-  0,00% )
           181.431      branches:u                #  244,468 M/sec                    ( +-  0,00% )
     <not counted>      branch-misses:u                                               (0,00%)

         0,0011983 +- 0,0000458 seconds time elapsed  ( +-  3,83% )

Some events weren't counted. Try disabling the NMI watchdog:
	echo 0 > /proc/sys/kernel/nmi_watchdog
	perf stat ...
	echo 1 > /proc/sys/kernel/nmi_watchdog
