## lscpu

Architektur:                     x86_64
CPU Operationsmodus:             32-bit, 64-bit
Adressgrößen:                    48 bits physical, 48 bits virtual
Byte-Reihenfolge:                Little Endian
CPU(s):                          12
Liste der Online-CPU(s):         0-11
Anbieterkennung:                 AuthenticAMD
Modellname:                      AMD Ryzen 5 PRO 4650U with Radeon Graphics
Prozessorfamilie:                23
Modell:                          96
Thread(s) pro Kern:              2
Kern(e) pro Sockel:              6
Sockel:                          1
Stepping:                        1
Übertaktung:                     aktiviert
Skalierung der CPU(s):           73%
Maximale Taktfrequenz der CPU:   2100,0000
Minimale Taktfrequenz der CPU:   1400,0000
BogoMIPS:                        4193.65
Markierungen:                    fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext fxsr_opt pdpe1gb rdtscp lm constant_tsc rep_good nopl nonstop_tsc cpuid extd_apicid aperfmperf rapl pni pclmulqdq monitor ssse3 fma cx16 sse4_1 sse4_2 movbe popcnt aes xsave avx f16c rdrand lahf_lm cmp_legacy svm extapic cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs skinit wdt tce topoext perfctr_core perfctr_nb bpext perfctr_llc mwaitx cpb cat_l3 cdp_l3 hw_pstate ssbd mba ibrs ibpb stibp vmmcall fsgsbase bmi1 avx2 smep bmi2 cqm rdt_a rdseed adx smap clflushopt clwb sha_ni xsaveopt xsavec xgetbv1 xsaves cqm_llc cqm_occup_llc cqm_mbm_total cqm_mbm_local clzero irperf xsaveerptr rdpru wbnoinvd arat npt lbrv svm_lock nrip_save tsc_scale vmcb_clean flushbyasid decodeassists pausefilter pfthreshold avic v_vmsave_vmload vgif v_spec_ctrl umip rdpid overflow_recov succor smca
Virtualisierung:                 AMD-V
L1d Cache:                       192 KiB (6 Instanzen)
L1i Cache:                       192 KiB (6 Instanzen)
L2 Cache:                        3 MiB (6 Instanzen)
L3 Cache:                        8 MiB (2 Instanzen)
NUMA-Knoten:                     1
NUMA-Knoten0 CPU(s):             0-11
Schwachstelle Itlb multihit:     Not affected
Schwachstelle L1tf:              Not affected
Schwachstelle Mds:               Not affected
Schwachstelle Meltdown:          Not affected
Schwachstelle Mmio stale data:   Not affected
Schwachstelle Spec store bypass: Mitigation; Speculative Store Bypass disabled via prctl and seccomp
Schwachstelle Spectre v1:        Mitigation; usercopy/swapgs barriers and __user pointer sanitization
Schwachstelle Spectre v2:        Mitigation; Retpolines, IBPB conditional, IBRS_FW, STIBP conditional, RSB filling
Schwachstelle Srbds:             Not affected
Schwachstelle Tsx async abort:   Not affected

## lscpu -C

NAME ONE-SIZE ALL-SIZE WAYS TYPE        LEVEL SETS PHY-LINE COHERENCY-SIZE
L1d       32K     192K    8 Data            1   64        1             64
L1i       32K     192K    8 Instruction     1   64        1             64
L2       512K       3M    8 Unified         2 1024        1             64
L3         4M       8M   16 Unified         3 4096        1             64