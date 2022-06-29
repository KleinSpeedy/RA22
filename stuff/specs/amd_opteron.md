## lscpu

Architecture:                    x86_64
CPU op-mode(s):                  32-bit, 64-bit
Byte Order:                      Little Endian
Address sizes:                   48 bits physical, 48 bits virtual
CPU(s):                          24
On-line CPU(s) list:             0-23
Thread(s) per core:              1
Core(s) per socket:              12
Socket(s):                       2
NUMA node(s):                    4
Vendor ID:                       AuthenticAMD
CPU family:                      16
Model:                           9
Model name:                      AMD Opteron(tm) Processor 6174
Stepping:                        1
CPU MHz:                         2200.228
BogoMIPS:                        4400.45
Virtualization:                  AMD-V
L1d cache:                       1,5 MiB
L1i cache:                       1,5 MiB
L2 cache:                        12 MiB
L3 cache:                        20 MiB
NUMA node0 CPU(s):               0,2,4,6,8,10
NUMA node1 CPU(s):               12,14,16,18,20,22
NUMA node2 CPU(s):               13,15,17,19,21,23
NUMA node3 CPU(s):               1,3,5,7,9,11
Vulnerability Itlb multihit:     Not affected
Vulnerability L1tf:              Not affected
Vulnerability Mds:               Not affected
Vulnerability Meltdown:          Not affected
Vulnerability Spec store bypass: Not affected
Vulnerability Spectre v1:        Mitigation; usercopy/swapgs barriers and __user pointer sanitization
Vulnerability Spectre v2:        Mitigation; Retpolines, STIBP disabled, RSB filling
Vulnerability Srbds:             Not affected
Vulnerability Tsx async abort:   Not affected
Flags:                           fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht sysca
                                 ll nx mmxext fxsr_opt pdpe1gb rdtscp lm 3dnowext 3dnow constant_tsc rep_good nopl nonstop_tsc cpuid extd_a
                                 picid amd_dcm pni monitor cx16 popcnt lahf_lm cmp_legacy svm extapic cr8_legacy abm sse4a misalignsse 3dno
                                 wprefetch osvw ibs skinit wdt nodeid_msr hw_pstate vmmcall npt lbrv svm_lock nrip_save pausefilter

## lscpu -C

NAME ONE-SIZE ALL-SIZE WAYS TYPE        LEVEL SETS PHY-LINE COHERENCY-SIZE
L1d       64K     1,5M    2 Data            1  512        1             64
L1i       64K     1,5M    2 Instruction     1  512        1             64
L2       512K      12M   16 Unified         2  512        1             64
L3         5M      20M   48 Unified         3 1706        1             64