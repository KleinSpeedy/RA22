## lscpu  

Architektur:                     x86_64  
CPU Operationsmodus:             32-bit, 64-bit  
Adressgrößen:                    40 bits physical, 48 bits virtual  
Byte-Reihenfolge:                Little Endian  
CPU(s):                          2  
Liste der Online-CPU(s):         0,1  
Anbieterkennung:                 AuthenticAMD  
Modellname:                      AMD Athlon(tm) Dual Core Processor 4050e  
Prozessorfamilie:                15  
Modell:                          107  
Thread(s) pro Kern:              1  
Kern(e) pro Sockel:              2  
Sockel:                          1  
Stepping:                        2  
Skalierung der CPU(s):           86%  
Maximale Taktfrequenz der CPU:   2100,0000  
Minimale Taktfrequenz der CPU:   1000,0000  
BogoMIPS:                        4191.16
Markierungen:                    fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext fxsr_opt rdtscp lm 3dnowext 3dnow rep_good nopl cpuid extd_apicid pni cx16 lahf_lm cmp_legacy svm extapic cr8_legacy 3dnowprefetch vmmcall lbrv  
Virtualisierung:                 AMD-V  
L1d Cache:                       128 KiB (2 Instanzen)  
L1i Cache:                       128 KiB (2 Instanzen)  
L2 Cache:                        1 MiB (2 Instanzen)  
NUMA-Knoten:                     1  
NUMA-Knoten0 CPU(s):             0,1  
Schwachstelle Itlb multihit:     Not affected  
Schwachstelle L1tf:              Not affected   
Schwachstelle Mds:               Not affected  
Schwachstelle Meltdown:          Not affected  
Schwachstelle Mmio stale data:   Not affected  
Schwachstelle Spec store bypass: Not affected  
Schwachstelle Spectre v1:        Mitigation; usercopy/swapgs barriers and __user pointer sanitization  
Schwachstelle Spectre v2:        Mitigation; Retpolines, STIBP disabled, RSB filling  
Schwachstelle Srbds:             Not affected  
Schwachstelle Tsx async abort:   Not affected  

## lscpu -C

|NAME|ONE-SIZE|ALL-SIZE|WAYS|TYPE|LEVEL|SETS|PHY-LINE|COHERENCY-SIZE| 
|----|--------|--------|----|----|-----|----|--------|--------------|
|L1d|    64K  |   128K |  2 |Data|  1  | 512|  1     |      64      |
|L1i|   64K   |  128K  |  2 |Instruction|1|512|  1   |      64      | 
|L2 | 512K    | 1M     | 16 |Unified |2 |512| 1      |      64      |
