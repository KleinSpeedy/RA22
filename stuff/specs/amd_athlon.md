## lscpu

Architektur:                       x86_64
  CPU Operationsmodus:             32-bit, 64-bit
  Adressgrößen:                    40 bits physical, 48 bits virtual
  Byte-Reihenfolge:                Little Endian
CPU(s):                            2
  Liste der Online-CPU(s):         0,1
Anbieterkennung:                   AuthenticAMD
  Modellname:                      AMD Athlon(tm) Dual Core Processor 4050e
    Prozessorfamilie:              15
    Modell:                        107
    Thread(s) pro Kern:            1
    Kern(e) pro Sockel:            2
    Sockel:                        1
    Stepping:                      2
    Skalierung der CPU(s):         100%
    Maximale Taktfrequenz der CPU: 2100,0000
    Minimale Taktfrequenz der CPU: 1000,0000
    BogoMIPS:                      4191.13
    Markierungen:                  fpu vme de pse tsc msr pae mce cx8 apic sep m
                                   trr pge mca cmov pat pse36 clflush mmx fxsr s
                                   se sse2 ht syscall nx mmxext fxsr_opt rdtscp 
                                   lm 3dnowext 3dnow rep_good nopl cpuid extd_ap
                                   icid pni cx16 lahf_lm cmp_legacy svm extapic 
                                   cr8_legacy 3dnowprefetch vmmcall lbrv
Virtualisierungsfunktionen:        
  Virtualisierung:                 AMD-V
Caches (Gesamtsumme):              
  L1d:                             128 KiB (2 Instanzen)
  L1i:                             128 KiB (2 Instanzen)
  L2:                              1 MiB (2 Instanzen)
NUMA:                              
  NUMA-Knoten:                     1
  NUMA-Knoten0 CPU(s):             0,1
Schwachstellen:                    
  Itlb multihit:                   Not affected
  L1tf:                            Not affected
  Mds:                             Not affected
  Meltdown:                        Not affected
  Mmio stale data:                 Not affected
  Spec store bypass:               Not affected
  Spectre v1:                      Mitigation; usercopy/swapgs barriers and __us
                                   er pointer sanitization
  Spectre v2:                      Mitigation; Retpolines, STIBP disabled, RSB f
                                   illing
  Srbds:                           Not affected
  Tsx async abort:                 Not affected

---
## lshw

jonas-veritonl410           
    description: Desktop Computer
    product: Veriton L410
    vendor: Acer
    version: R02-A1
    serial: PSL41C1G048290AC752707
    width: 64 bits
    capabilities: smbios-2.5 dmi-2.5 smp vsyscall32
    configuration: boot=normal chassis=desktop uuid=001FE239-414A-2008-0716-204932000000
  *-core
       description: Motherboard
       product: FRS690L
       vendor: Acer
       physical id: 0
       serial: 04R782601615
     *-firmware
          description: BIOS
          vendor: Phoenix Technologies, LTD
          physical id: 0
          version: R02-A1
          date: 04/14/2008
          size: 128KiB
          capacity: 512KiB
          capabilities: isa pci pnp apm upgrade shadowing cdboot bootselect socketedrom edd int13floppy360 int13floppy1200 int13floppy720 int13floppy2880 int5printscreen int9keyboard int14serial int17printer int10video acpi usb agp ls120boot zipboot biosbootspecification
     *-cpu
          description: CPU
          product: AMD Athlon(tm) Dual Core Processor 4050e
          vendor: Advanced Micro Devices [AMD]
          physical id: 4
          bus info: cpu@0
          version: AMD Athlon(tm) Dual Core Processor 4050e{
          slot: Socket AM2
          size: 2100MHz
          capacity: 3GHz
          width: 64 bits
          clock: 199MHz
          capabilities: lm fpu fpu_exception wp vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext fxsr_opt rdtscp x86-64 3dnowext 3dnow rep_good nopl cpuid extd_apicid pni cx16 lahf_lm cmp_legacy svm extapic cr8_legacy 3dnowprefetch vmmcall lbrv cpufreq
          configuration: cores=2 enabledcores=2 threads=2
        *-cache:0
             description: L1 cache
             physical id: 8
             slot: Internal Cache
             size: 128KiB
             capacity: 128KiB
             capabilities: synchronous internal write-back
             configuration: level=1
        *-cache:1
             description: L2 cache
             physical id: 9
             slot: External Cache
             size: 512KiB
             capacity: 512KiB
             capabilities: synchronous internal write-back
             configuration: level=2
     *-memory
          description: System Memory
          physical id: 1f
          slot: System board or motherboard
          size: 2GiB
        *-bank:0
             description: DIMM DDR2 667 MHz (1,5 ns)
             physical id: 0
             slot: A0
             size: 1GiB
             width: 64 bits
             clock: 667MHz (1.5ns)
        *-bank:1
             description: DIMM DDR2 667 MHz (1,5 ns)
             physical id: 1
             slot: A2
             size: 1GiB
             width: 64 bits
             clock: 667MHz (1.5ns)
     *-pci:0
          description: Host bridge
          product: RS690 Host Bridge
          vendor: Advanced Micro Devices, Inc. [AMD/ATI]
          physical id: 100
          bus info: pci@0000:00:00.0
          version: 00
          width: 32 bits
          clock: 66MHz
          configuration: latency=64
        *-pci:0
             description: PCI bridge
             product: RS690/RS740 PCI to PCI Bridge (Internal gfx)
             vendor: Advanced Micro Devices, Inc. [AMD/ATI]
             physical id: 1
             bus info: pci@0000:00:01.0
             version: 00
             width: 32 bits
             clock: 66MHz
             capabilities: pci ht normal_decode bus_master cap_list
             resources: ioport:d000(size=4096) memory:fdd00000-fdefffff ioport:d0000000(size=268435456)
           *-display
                description: VGA compatible controller
                product: RS690 [Radeon X1200]
                vendor: Advanced Micro Devices, Inc. [AMD/ATI]
                physical id: 5
                bus info: pci@0000:01:05.0
                version: 00
                width: 64 bits
                clock: 33MHz
                capabilities: pm msi vga_controller bus_master cap_list rom
                configuration: driver=radeon latency=64
                resources: irq:24 memory:d0000000-dfffffff memory:fdef0000-fdefffff ioport:de00(size=256) memory:fdd00000-fddfffff memory:c0000-dffff
        *-pci:1
             description: PCI bridge
             product: RS690 PCI to PCI Bridge (PCI Express Port 3)
             vendor: Advanced Micro Devices, Inc. [AMD/ATI]
             physical id: 7
             bus info: pci@0000:00:07.0
             version: 00
             width: 32 bits
             clock: 33MHz
             capabilities: pci pm pciexpress msi ht normal_decode bus_master cap_list
             configuration: driver=pcieport
             resources: irq:0 ioport:e000(size=4096) memory:fdc00000-fdcfffff ioport:fdf00000(size=1048576)
           *-network
                description: Ethernet interface
                product: RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller
                vendor: Realtek Semiconductor Co., Ltd.
                physical id: 0
                bus info: pci@0000:02:00.0
                logical name: enp2s0
                version: 01
                serial: 00:1f:e2:39:41:4a
                size: 1Gbit/s
                capacity: 1Gbit/s
                width: 64 bits
                clock: 33MHz
                capabilities: pm vpd msi pciexpress bus_master cap_list rom ethernet physical tp mii 10bt 10bt-fd 100bt 100bt-fd 1000bt 1000bt-fd autonegotiation
                configuration: autonegotiation=on broadcast=yes driver=r8169 driverversion=5.15.49-1-MANJARO duplex=full ip=192.168.0.133 latency=0 link=yes multicast=yes port=twisted pair speed=1Gbit/s
                resources: irq:19 ioport:ee00(size=256) memory:fdcff000-fdcfffff memory:fdc00000-fdc1ffff
        *-sata
             description: SATA controller
             product: SB600 Non-Raid-5 SATA
             vendor: Advanced Micro Devices, Inc. [AMD/ATI]
             physical id: 12
             bus info: pci@0000:00:12.0
             version: 00
             width: 32 bits
             clock: 66MHz
             capabilities: sata pm ahci_1.0 bus_master cap_list
             configuration: driver=ahci latency=64
             resources: irq:22 ioport:ff00(size=8) ioport:fe00(size=4) ioport:fd00(size=8) ioport:fc00(size=4) ioport:fb00(size=16) memory:fe02f000-fe02f3ff
        *-usb:0
             description: USB controller
             product: SB600 USB (OHCI0)
             vendor: Advanced Micro Devices, Inc. [AMD/ATI]
             physical id: 13
             bus info: pci@0000:00:13.0
             version: 00
             width: 32 bits
             clock: 66MHz
             capabilities: ohci bus_master
             configuration: driver=ohci-pci latency=64
             resources: irq:16 memory:fe02e000-fe02efff
           *-usbhost
                product: OHCI PCI host controller
                vendor: Linux 5.15.49-1-MANJARO ohci_hcd
                physical id: 1
                bus info: usb@2
                logical name: usb2
                version: 5.15
                capabilities: usb-1.10
                configuration: driver=hub slots=2 speed=12Mbit/s
        *-usb:1
             description: USB controller
             product: SB600 USB (OHCI1)
             vendor: Advanced Micro Devices, Inc. [AMD/ATI]
             physical id: 13.1
             bus info: pci@0000:00:13.1
             version: 00
             width: 32 bits
             clock: 66MHz
             capabilities: ohci bus_master
             configuration: driver=ohci-pci latency=64
             resources: irq:17 memory:fe02d000-fe02dfff
           *-usbhost
                product: OHCI PCI host controller
                vendor: Linux 5.15.49-1-MANJARO ohci_hcd
                physical id: 1
                bus info: usb@3
                logical name: usb3
                version: 5.15
                capabilities: usb-1.10
                configuration: driver=hub slots=2 speed=12Mbit/s
        *-usb:2
             description: USB controller
             product: SB600 USB (OHCI2)
             vendor: Advanced Micro Devices, Inc. [AMD/ATI]
             physical id: 13.2
             bus info: pci@0000:00:13.2
             version: 00
             width: 32 bits
             clock: 66MHz
             capabilities: ohci bus_master
             configuration: driver=ohci-pci latency=64
             resources: irq:18 memory:fe02c000-fe02cfff
           *-usbhost
                product: OHCI PCI host controller
                vendor: Linux 5.15.49-1-MANJARO ohci_hcd
                physical id: 1
                bus info: usb@4
                logical name: usb4
                version: 5.15
                capabilities: usb-1.10
                configuration: driver=hub slots=2 speed=12Mbit/s
        *-usb:3
             description: USB controller
             product: SB600 USB (OHCI3)
             vendor: Advanced Micro Devices, Inc. [AMD/ATI]
             physical id: 13.3
             bus info: pci@0000:00:13.3
             version: 00
             width: 32 bits
             clock: 66MHz
             capabilities: ohci bus_master
             configuration: driver=ohci-pci latency=64
             resources: irq:17 memory:fe02b000-fe02bfff
           *-usbhost
                product: OHCI PCI host controller
                vendor: Linux 5.15.49-1-MANJARO ohci_hcd
                physical id: 1
                bus info: usb@5
                logical name: usb5
                version: 5.15
                capabilities: usb-1.10
                configuration: driver=hub slots=2 speed=12Mbit/s
              *-usb:0
                   description: Keyboard
                   product: G915 WIRELESS RGB MECHANICAL GAMING KEYBOARD
                   vendor: Logitech
                   physical id: 1
                   bus info: usb@5:1
                   version: 9.03
                   serial: B39574C7
                   capabilities: usb-2.00
                   configuration: driver=usbhid maxpower=500mA speed=12Mbit/s
              *-usb:1
                   description: Mouse
                   product: USB Mouse
                   vendor: Genesys Logic, Inc.
                   physical id: 2
                   bus info: usb@5:2
                   version: 1.00
                   capabilities: usb-1.10
                   configuration: driver=usbhid maxpower=100mA speed=1Mbit/s
        *-usb:4
             description: USB controller
             product: SB600 USB (OHCI4)
             vendor: Advanced Micro Devices, Inc. [AMD/ATI]
             physical id: 13.4
             bus info: pci@0000:00:13.4
             version: 00
             width: 32 bits
             clock: 66MHz
             capabilities: ohci bus_master
             configuration: driver=ohci-pci latency=64
             resources: irq:18 memory:fe02a000-fe02afff
           *-usbhost
                product: OHCI PCI host controller
                vendor: Linux 5.15.49-1-MANJARO ohci_hcd
                physical id: 1
                bus info: usb@6
                logical name: usb6
                version: 5.15
                capabilities: usb-1.10
                configuration: driver=hub slots=2 speed=12Mbit/s
        *-usb:5
             description: USB controller
             product: SB600 USB Controller (EHCI)
             vendor: Advanced Micro Devices, Inc. [AMD/ATI]
             physical id: 13.5
             bus info: pci@0000:00:13.5
             version: 00
             width: 32 bits
             clock: 66MHz
             capabilities: pm debug ehci bus_master cap_list
             configuration: driver=ehci-pci latency=64
             resources: irq:19 memory:fe029000-fe0290ff
           *-usbhost
                product: EHCI Host Controller
                vendor: Linux 5.15.49-1-MANJARO ehci_hcd
                physical id: 1
                bus info: usb@1
                logical name: usb1
                version: 5.15
                capabilities: usb-2.00
                configuration: driver=hub slots=10 speed=480Mbit/s
        *-serial
             description: SMBus
             product: SBx00 SMBus Controller
             vendor: Advanced Micro Devices, Inc. [AMD/ATI]
             physical id: 14
             bus info: pci@0000:00:14.0
             version: 14
             width: 32 bits
             clock: 66MHz
             capabilities: ht cap_list
             configuration: driver=piix4_smbus latency=0
             resources: irq:0 ioport:b00(size=16)
        *-ide
             description: IDE interface
             product: SB600 IDE
             vendor: Advanced Micro Devices, Inc. [AMD/ATI]
             physical id: 14.1
             bus info: pci@0000:00:14.1
             version: 00
             width: 32 bits
             clock: 66MHz
             capabilities: ide isa_compat_mode pci_native_mode bus_master
             configuration: driver=pata_atiixp latency=64
             resources: irq:16 ioport:1f0(size=8) ioport:3f6 ioport:170(size=8) ioport:376 ioport:f900(size=16)
        *-multimedia
             description: Audio device
             product: SBx00 Azalia (Intel HDA)
             vendor: Advanced Micro Devices, Inc. [AMD/ATI]
             physical id: 14.2
             bus info: pci@0000:00:14.2
             version: 00
             width: 64 bits
             clock: 33MHz
             capabilities: pm bus_master cap_list
             configuration: driver=snd_hda_intel latency=64
             resources: irq:16 memory:fe024000-fe027fff
        *-isa
             description: ISA bridge
             product: SB600 PCI to LPC Bridge
             vendor: Advanced Micro Devices, Inc. [AMD/ATI]
             physical id: 14.3
             bus info: pci@0000:00:14.3
             version: 00
             width: 32 bits
             clock: 66MHz
             capabilities: isa bus_master
             configuration: latency=0
        *-pci:2
             description: PCI bridge
             product: SBx00 PCI to PCI Bridge
             vendor: Advanced Micro Devices, Inc. [AMD/ATI]
             physical id: 14.4
             bus info: pci@0000:00:14.4
             version: 00
             width: 32 bits
             clock: 66MHz
             capabilities: pci subtractive_decode bus_master vga_palette
             resources: ioport:c000(size=4096) memory:fdb00000-fdbfffff memory:fda00000-fdafffff
     *-pci:1
          description: Host bridge
          product: K8 [Athlon64/Opteron] HyperTransport Technology Configuration
          vendor: Advanced Micro Devices, Inc. [AMD]
          physical id: 101
          bus info: pci@0000:00:18.0
          version: 00
          width: 32 bits
          clock: 33MHz
     *-pci:2
          description: Host bridge
          product: K8 [Athlon64/Opteron] Address Map
          vendor: Advanced Micro Devices, Inc. [AMD]
          physical id: 102
          bus info: pci@0000:00:18.1
          version: 00
          width: 32 bits
          clock: 33MHz
     *-pci:3
          description: Host bridge
          product: K8 [Athlon64/Opteron] DRAM Controller
          vendor: Advanced Micro Devices, Inc. [AMD]
          physical id: 103
          bus info: pci@0000:00:18.2
          version: 00
          width: 32 bits
          clock: 33MHz
     *-pci:4
          description: Host bridge
          product: K8 [Athlon64/Opteron] Miscellaneous Control
          vendor: Advanced Micro Devices, Inc. [AMD]
          physical id: 104
          bus info: pci@0000:00:18.3
          version: 00
          width: 32 bits
          clock: 33MHz
          configuration: driver=k8temp
          resources: irq:0
     *-pnp00:00
          product: Motherboard registers
          physical id: 1
          capabilities: pnp
          configuration: driver=system
     *-pnp00:01
          product: AT Real-Time Clock
          physical id: 2
          capabilities: pnp
          configuration: driver=rtc_cmos
     *-pnp00:02
          product: Motherboard registers
          physical id: 3
          capabilities: pnp
          configuration: driver=system
     *-pnp00:03
          product: PS/2 Port for PS/2-style Mice
          physical id: 5
          capabilities: pnp
          configuration: driver=i8042 aux
     *-pnp00:04
          product: Motherboard registers
          physical id: 6
          capabilities: pnp
          configuration: driver=system
     *-pnp00:05
          product: System Board
          physical id: 7
          capabilities: pnp
          configuration: driver=system
