# started on Sat Jun 25 12:52:14 2022


 Performance counter stats for './exe/exe_O3/rle_exe_O3' (50 runs):

              0,55 msec task-clock:u              #    0,494 CPUs utilized            ( +-  2,38% )
                 0      context-switches:u        #    0,000 /sec                   
                 0      cpu-migrations:u          #    0,000 /sec                   
                50      page-faults:u             #   84,276 K/sec                    ( +-  0,36% )
           407.353      cycles:u                  #    0,687 GHz                      ( +-  4,37% )
            16.670      stalled-cycles-frontend:u #    4,16% frontend cycles idle     ( +-  5,40% )
            63.960      stalled-cycles-backend:u  #   15,94% backend cycles idle      ( +-  9,26% )
           659.442      instructions:u            #    1,64  insn per cycle         
                                                  #    0,11  stalled cycles per insn  ( +-  0,00% )
           153.418      branches:u                #  258,588 M/sec                    ( +-  0,00% )
     <not counted>      branch-misses:u                                               (0,00%)

         0,0011160 +- 0,0000217 seconds time elapsed  ( +-  1,95% )

Some events weren't counted. Try disabling the NMI watchdog:
	echo 0 > /proc/sys/kernel/nmi_watchdog
	perf stat ...
	echo 1 > /proc/sys/kernel/nmi_watchdog
