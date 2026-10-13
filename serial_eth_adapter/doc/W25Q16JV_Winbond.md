# W25Q16JV_Winbond

_Text extraction of `W25Q16JV_Winbond.pdf` (pdftotext -layout). Tables/pinouts/figures may lose fidelity; the PDF is authoritative._

```text
                                             W25Q16JV




3V 16M-BIT
SERIAL FLASH MEMORY WITH
DUAL/QUAD SPI




                       Publication Release Date: March 22, 2018, 2018
                                                           Revision G
                                                                                                                        W25Q16JV

                                                       Table of Contents

1.   GENERAL DESCRIPTIONS ............................................................................................................. 4
2.   FEATURES ....................................................................................................................................... 4
3.   PACKAGE TYPES AND PIN CONFIGURATIONS .......................................................................... 5
     3.1   Pin Configuration SOIC 150/208-mil .................................................................................... 5
     3.2   Pad Configuration WSON 6x5-mm & USON 2x3-mm/4x3-mm, XSON 4x4-mm ................. 5
     3.3   Pin Description SOIC 150/208-mil, WSON 6x5-mm, USON 2x3-mm/4x3-mm, XSON 4x4-
     mm    5
     3.4   Ball Configuration WLCSP ................................................................................................... 6
     3.5   Ball Description WLCSP ....................................................................................................... 6
4.   PIN DESCRIPTIONS ........................................................................................................................ 7
     4.1   Chip Select (/CS) .................................................................................................................. 7
     4.2   Serial Data Input, Output and IOs (DI, DO and IO0, IO1, IO2, IO3) .................................... 7
     4.3   Write Protect (/WP)............................................................................................................... 7
     4.4   HOLD (/HOLD) ..................................................................................................................... 7
     4.5   Serial Clock (CLK) ................................................................................................................ 7
     4.1   Reset (/RESET)(1) ................................................................................................................. 7
5.   BLOCK DIAGRAM ............................................................................................................................ 8
6.   FUNCTIONAL DESCRIPTIONS ....................................................................................................... 9
     6.1   Standard SPI Instructions ..................................................................................................... 9
     6.2   Dual SPI Instructions ............................................................................................................ 9
     6.1   Quad SPI Instructions........................................................................................................... 9
     6.2   Software Reset & Hardware /RESET pin ............................................................................. 9
     6.3   Write Protection .................................................................................................................. 10
     6.4   Write Protect Features........................................................................................................ 10
7.   STATUS AND CONFIGURATION REGISTERS ............................................................................ 11
     7.1   Status Registers ................................................................................................................. 11
                          Erase/Write In Progress (BUSY) – Status Only ................................................................. 11
                          Write Enable Latch (WEL) – Status Only ........................................................................... 11
                          Block Protect Bits (BP2, BP1, BP0) – Volatile/Non-Volatile Writable ................................. 11
                          Top/Bottom Block Protect (TB) – Volatile/Non-Volatile Writable ........................................ 12
                          Sector/Block Protect Bit (SEC) – Volatile/Non-Volatile Writable ........................................ 12
                          Complement Protect (CMP) – Volatile/Non-Volatile Writable ............................................ 12
                          Status Register Protect SRP, SRL) – Volatile/Non-Volatile Writable ................................. 13
                          Erase/Program Suspend Status (SUS) – Status Only ....................................................... 14
                          Security Register Lock Bits (LB3, LB2, LB1) –Non-Volatile OTP Writable ......................... 14
8.   QUAD ENABLE (QE) – VOLATILE/NON-VOLATILE WRITABLE .............................................. 14
                          Write Protect Selection (WPS) – Volatile/Non-Volatile Writable ........................................ 15
                          Output Driver Strength (DRV1, DRV0) – Volatile/Non-Volatile Writable ............................ 15
                          Reserved Bits – Non Functional ........................................................................................ 15
                          W25Q16JV Status Register Memory Protection (WPS = 0, CMP = 0) ................................. 16
                          W25Q16JV Status Register Memory Protection (WPS = 0, CMP = 1) ................................. 17



                                                                     -1-
                                                                                                                                      W25Q16JV

                           W25Q16JV Individual Block Memory Protection (WPS=1) ................................................... 18
9.   INSTRUCTIONS ............................................................................................................................. 19
     9.1   Device ID and Instruction Set Tables ................................................................................. 19
                        Manufacturer and Device Identification ................................................................................. 19
                        Instruction Set Table 1 (Standard SPI Instructions) (1) .......................................................... 20
                        Instruction Set Table 2 (Dual/Quad SPI Instructions)(1)......................................................... 21
                Notes:................................................................................................................................................ 21
     9.2        Instruction Descriptions ...................................................................................................... 22
                           Write Enable (06h) ................................................................................................................ 22
                           Write Enable for Volatile Status Register (50h)..................................................................... 22
                           Write Disable (04h) ............................................................................................................... 23
                           Read Status Register-1 (05h), Status Register-2 (35h) & Status Register-3 (15h) ............... 23
                           Write Status Register-1 (01h), Status Register-2 (31h) & Status Register-3 (11h) ............... 24
                           Read Data (03h) ................................................................................................................... 26
                           Fast Read (0Bh) ................................................................................................................... 27
                           Fast Read Dual Output (3Bh) ............................................................................................... 28
                           Fast Read Quad Output (6Bh) .............................................................................................. 29
                            Fast Read Dual I/O (BBh) ................................................................................................... 30
                            Fast Read Quad I/O (EBh).................................................................................................. 31
                            Set Burst with Wrap (77h) ................................................................................................... 32
                            Page Program (02h) ........................................................................................................... 33
                            Quad Input Page Program (32h)......................................................................................... 34
     9.3        Sector Erase (20h) ............................................................................................................. 35
                           32KB Block Erase (52h)........................................................................................................ 36
                           64KB Block Erase (D8h) ....................................................................................................... 37
                           Chip Erase (C7h / 60h) ......................................................................................................... 38
                           Erase / Program Suspend (75h) ........................................................................................... 39
                           Erase / Program Resume (7Ah) ............................................................................................ 40
                           Power-down (B9h) ................................................................................................................ 41
                           Release Power-down / Device ID (ABh) ............................................................................... 42
                           Read Manufacturer / Device ID (90h) ................................................................................... 43
                           Read Manufacturer / Device ID Dual I/O (92h) ..................................................................... 44
                            Read Manufacturer / Device ID Quad I/O (94h) .................................................................. 45
                            Read Unique ID Number (4Bh) ........................................................................................... 46
                            Read JEDEC ID (9Fh) ........................................................................................................ 47
                            Read SFDP Register (5Ah)................................................................................................. 48
                            Erase Security Registers (44h) ........................................................................................... 49
                            Program Security Registers (42h) ....................................................................................... 50
                            Read Security Registers (48h) ............................................................................................ 51
                            Individual Block/Sector Lock (36h) ...................................................................................... 52
                            Individual Block/Sector Unlock (39h) .................................................................................. 53
                            Read Block/Sector Lock (3Dh)............................................................................................ 54
                            Global Block/Sector Lock (7Eh) .......................................................................................... 55
                            Global Block/Sector Unlock (98h) ....................................................................................... 55
                            Enable Reset (66h) and Reset Device (99h) ...................................................................... 56



                                                                                       Publication Release Date: March 22, 2018, 2018
                                                                           -2-                                             Revision G
                                                                                                                     W25Q16JV

10.   ELECTRICAL CHARACTERISTICS............................................................................................... 57
      10.1 Absolute Maximum Ratings (1) .......................................................................................... 57
      10.2 Operating Ranges .............................................................................................................. 57
      10.3 Power-Up Power-Down Timing and Requirements ........................................................... 58
      10.4 DC Electrical Characteristics- ............................................................................................. 59
      10.5 AC Measurement Conditions ............................................................................................. 60
      10.6 AC Electrical Characteristics(6) ........................................................................................... 61
      10.7 Serial Output Timing ........................................................................................................... 63
      10.8 Serial Input Timing.............................................................................................................. 63
      10.9 /WP Timing ......................................................................................................................... 63
11.   PACKAGE SPECIFICATIONS ....................................................................................................... 64
      11.1 8-Pin SOIC 150-mil (Package Code SN) 20131227 .......................................................... 64
      11.3 8-Pin SOIC 208-mil (Package Code SS) ............................................................................ 65
      11.4 8-Pad USON 2x3x0.6-mm^³ (Package Code UX) ............................................................. 66
      11.5 8-Pad WSON 6x5-mm (Package Code ZP) ....................................................................... 67
      11.6 8-Pad USON 4x3-mm (Package Code UU) ....................................................................... 68
      11.7 8-Pad XSON 4x4x0.45-mm (Package Code XG) .............................................................. 69
      11.8 8-Ball WLCSP (Package Code BY) .................................................................................... 70
12.   ORDERING INFORMATION .......................................................................................................... 71
      12.1 Valid Part Numbers and Top Side Marking ........................................................................ 72
13.   REVISION HISTORY ...................................................................................................................... 74




                                                                   -3-
                                                                                       W25Q16JV

1. GENERAL DESCRIPTIONS
The W25Q16JV (16M-bit) Serial Flash memory provides a storage solution for systems with limited space,
pins and power. The 25Q series offers flexibility and performance well beyond ordinary Serial Flash devices.
They are ideal for code shadowing to RAM, executing code directly from Dual/Quad SPI (XIP) and storing
voice, text and data. The device operates on a single 2.7V to 3.6V power supply with current consumption
as low as 1µA for power-down.
The W25Q16JV array is organized into 8,192 programmable pages of 256-bytes each. Up to 256 bytes can
be programmed at a time. Pages can be erased in groups of 16 (4KB sector erase), groups of 128 (32KB
block erase), groups of 256 (64KB block erase) or the entire chip (chip erase). The W25Q16JV has 512
erasable sectors and 32 erasable blocks respectively. The small 4KB sectors allow for greater flexibility in
applications that require data and parameter storage. (See figure 2.)
The W25Q16JV supports the standard Serial Peripheral Interface (SPI), and a high performance Dual/Quad
output as well as Dual/Quad I/O SPI: Serial Clock, Chip Select, Serial Data I/O0 (DI), I/O1 (DO), I/O2, and
I/O3. SPI clock frequencies of up to 133MHz are supported allowing equivalent clock rates of 266MHz
(133MHz x 2) for Dual I/O and 532MHz (133MHz x 4) for Quad I/O when using the Fast Read Dual/Quad
I/O instructions. These transfer rates can outperform standard Asynchronous 8 and 16-bit Parallel Flash
memories.
Additionally, the device supports JEDEC standard manufacturer and device ID and SFDP Register, a 64-
bit Unique Serial Number and three 256-bytes Security Registers.

2. FEATURES
    New Family of SpiFlash Memories                      Flexible Architecture with 4KB sectors
     – W25Q16JV: 16M-bit / 2M-byte (2,097,152)             – Uniform Sector/Block Erase (4K/32K/64K-Byte)
     – Standard SPI: CLK, /CS, DI, DO                      – Program 1 to 256 byte per programmable page
     – Dual SPI: CLK, /CS, IO0, IO1                        – Erase/Program Suspend & Resume
     – Quad SPI: CLK, /CS, IO0, IO1, IO2, IO3             Advanced Security Features
     – Software & Hardware Reset(1)                        – Software and Hardware Write-Protect
    Highest Performance Serial Flash                      – Power Supply Lock-Down and
     – 133MHz Single, Dual/Quad SPI clocks                 – Special OTP protection(2)
     – 266/532MHz equivalent Dual/Quad SPI                 – Top/Bottom, Complement array protection
     – 66MB/S continuous data transfer rate                – Individual Block/Sector array protection
     – Min. 100K Program-Erase cycles per sector           – 64-Bit Unique ID for each device
     – More than 20-year data retention                    – Discoverable Parameters (SFDP) Register
    Efficient “Continuous Read”                           – 3X256-Bytes Security Registers with OTP locks
     – Continuous Read with 8/16/32/64-Byte Wrap           – Volatile & Non-volatile Status Register Bits
     – As few as 8 clocks to address memory               Space Efficient Packaging
     – Allows true XIP (execute in place) operation        – 8-pin SOIC 150-mil / 208-mil
     – Outperforms X16 Parallel Flash                      – 8-pad USON 2X3mm/4x3-mm
    Low Power, Wide Temperature Range                     – 8-pad XSON 4x4-mm
     – Single 2.7V to 3.6V supply                          – 8-pad WSON 6x5-mm
     – -40°C to +85°C operating range                      – 8-ball WLCSP
     – -40°C to +105°C operating range                     – Contact Winbond for KGD and other options
     – <1µA Power-down (typ.)



   Note: 1. Hardware /RESET pin is only available on SOIC-16 & TFBGA packages
         2. Please contact Winbond for details.




                                                           Publication Release Date: March 22, 2018, 2018
                                                   -4-                                         Revision G
                                                                                                           W25Q16JV


3. PACKAGE TYPES AND PIN CONFIGURATIONS
3.1 Pin Configuration SOIC 150/208-mil

                                                             Top View
                                       /CS               1              8               VCC

                                                                                        /HOLD or /RESET
                                DO (IO1)                 2              7
                                                                                        (IO3)

                               /WP (IO2)                 3              6               CLK

                                     GND                 4              5               DI (IO0)


                           Figure 1a. Pin Assignments, 8-pin SOIC150-mil/208-mil (Package Code SN, SS)

3.2        Pad Configuration WSON 6x5-mm & USON 2x3-mm/4x3-mm, XSON 4x4-mm
                                                             Top View

                                             /CS             1      8             VCC
                                                                                  /HOLD or /RESET
                                       DO (IO1)              2      7
                                                                                  (IO3)
                                     /WP (IO2)               3      6             CLK

                                          GND                4      5             DI (IO0)


 Figure 1b. Pad Assignments, 8-pad WSON 6x5-mm, USON 2X3-mm/4x3-mm, XSON 4x4-mm (Package Code ZP, UX, UU, XG)

3.3        Pin Description SOIC 150/208-mil, WSON 6x5-mm, USON 2x3-mm/4x3-mm,
           XSON 4x4-mm
      PIN NO.             PIN NAME                 I/O                                   FUNCTION
            1                  /CS                  I         Chip Select Input
            2               DO (IO1)               I/O        Data Output (Data Input Output 1)(1)
            3              /WP (IO2)               I/O        Write Protect Input ( Data Input Output 2)(2)
            4                 GND                             Ground
            5               DI (IO0)               I/O        Data Input (Data Input Output 0)(1)
            6                 CLK                   I         Serial Clock Input
                       /HOLD or /RESET
            7                                      I/O        Hold or Reset Input (Data Input Output 3)(2)
                            (IO3)
            8                 VCC                             Power Supply
Notes:
      1.    IO0 and IO1 are used for Standard and Dual SPI instructions
      2.    IO0 – IO3 are used for Quad SPI instructions, /HOLD (or /RESET) function is only available for Standard/Dual SPI.




                                                                  -5-
                                                                                                               W25Q16JV



3.4     Ball Configuration WLCSP

                                        Top View                               Bottom View

                                         A1           A2                              A2         A1
                                        VCC           /CS                            /CS        VCC

                                         B1           B2                              B2         B1
                                     /HOLD (IO3)    DO(IO1)                         DO(IO1)   /HOLD (IO3)

                                         C1           C2                             C2         C1
                                        CLK        /WP (IO2)                    /WP (IO2)       CLK

                                         D1           D2                             D2         D1
                                       DI(IO0)       GND                             GND       DI(IO0)




                            Figure 1c. W25Q16JV Ball Assignments, 8-ball WLCSP (Package Code BY)


3.5     Ball Description WLCSP
      BALL NO.          PIN NAME                     I/O                                      FUNCTION
         A1                 VCC                                Power Supply
         A2                  /CS                       I       Chip Select Input
                         /HOLD or
         B1                                          I/O       Hold or Reset Input (Data Input Output 3)(2)
                       /RESET (IO3)
         B2               DO (IO1)                   I/O       Data Output (Data Input Output 1)*1
         C1                 CLK                        I       Serial Clock Input
         C2              /WP (IO2)                   I/O       Write Protect Input ( Data Input Output 2)(2)
         D1               DI (IO0)                   I/O       Data Input (Data Input Output 0)*1
         D2                 GND                                Ground
Notes:
        1. IO0 and IO1 are used for Standard and Dual SPI instructions
        2. IO0 – IO3 are used for Quad SPI instructions, /HOLD (or /RESET) functions are only available for Standard/Dual SPI.




                                                                            Publication Release Date: March 22, 2018, 2018
                                                                   -6-                                          Revision G
                                                                                                      W25Q16JV



4.     PIN DESCRIPTIONS
4.1 Chip Select (/CS)
The SPI Chip Select (/CS) pin enables and disables device operation. When /CS is high the device is
deselected and the Serial Data Output (DO, or IO0, IO1, IO2, IO3) pins are at high impedance. When
deselected, the devices power consumption will be at standby levels unless an internal erase, program or
write status register cycle is in progress. When /CS is brought low the device will be selected, power
consumption will increase to active levels and instructions can be written to and data read from the device.
After power-up, /CS must transition from high to low before a new instruction will be accepted. The /CS
input must track the VCC supply level at power-up and power-down (see “Write Protection” and Figure 58).
If needed a pull-up resister on the /CS pin can be used to accomplish this.
4.2 Serial Data Input, Output and IOs (DI, DO and IO0, IO1, IO2, IO3)
The W25Q16JV supports standard SPI, Dual SPI and Quad SPI operation. Standard SPI instructions use
the unidirectional DI (input) pin to serially write instructions, addresses or data to the device on the rising
edge of the Serial Clock (CLK) input pin. Standard SPI also uses the unidirectional DO (output) to read data
or status from the device on the falling edge of CLK.
Dual and Quad SPI instructions use the bidirectional IO pins to serially write instructions, addresses or data
to the device on the rising edge of CLK and read data or status from the device on the falling edge of CLK.
Quad SPI instructions require the non-volatile Quad Enable bit (QE) in Status Register-2 to be set. When
QE=1, the /WP pin becomes IO2 and the /HOLD pin becomes IO3.


4.3 Write Protect (/WP)
The Write Protect (/WP) pin can be used to prevent the Status Register from being written. Used in
conjunction with the Status Register’s Block Protect (CMP, SEC, TB, BP2, BP1 and BP0) bits and Status
Register Protect (SRP) bits, a portion as small as a 4KB sector or the entire memory array can be hardware
protected. The /WP pin is active low.
4.4 HOLD (/HOLD)
The /HOLD pin allows the device to be paused while it is actively selected. When /HOLD is brought low,
while /CS is low, the DO pin will be at high impedance and signals on the DI and CLK pins will be ignored
(don’t care). When /HOLD is brought high, device operation can resume. The /HOLD function can be useful
when multiple devices are sharing the same SPI signals. The /HOLD pin is active low. When the QE bit of
Status Register-2 is set for Quad I/O, the /HOLD pin function is not available since this pin is used for IO3.
See Figure 1a-c for the pin configuration of Quad I/O operation.
4.5 Serial Clock (CLK)
The SPI Serial Clock Input (CLK) pin provides the timing for serial input and output operations. ("See SPI
Operations")
4.1        Reset (/RESET)(1)
A dedicated hardware /RESET pin is available on SOIC-16 and TFBGA packages. When it’s driven low for
a minimum period of ~1µS, this device will terminate any external or internal operations and return to its
power-on state.
Note:
      1.    Hardware /RESET pin is available on SOIC-16 or TFBGA; please contact Winbond for this package.




                                                              -7-
                                                                         W25Q16JV

5. BLOCK DIAGRAM




               Figure 2. W25Q16JV Serial Flash Memory Block Diagram




                                             Publication Release Date: March 22, 2018, 2018
                                      -8-                                        Revision G
                                                                                                         W25Q16JV

6.    FUNCTIONAL DESCRIPTIONS

6.1     Standard SPI Instructions
The W25Q16JV is accessed through an SPI compatible bus consisting of four signals: Serial Clock (CLK),
Chip Select (/CS), Serial Data Input (DI) and Serial Data Output (DO). Standard SPI instructions use the DI
input pin to serially write instructions, addresses or data to the device on the rising edge of CLK. The DO
output pin is used to read data or status from the device on the falling edge of CLK.
SPI bus operation Mode 0 (0,0) and 3 (1,1) are supported. The primary difference between Mode 0 and
Mode 3 concerns the normal state of the CLK signal when the SPI bus master is in standby and data is not
being transferred to the Serial Flash. For Mode 0, the CLK signal is normally low on the falling and rising
edges of /CS. For Mode 3, the CLK signal is normally high on the falling and rising edges of /CS.


6.2     Dual SPI Instructions
The W25Q16JV supports Dual SPI operation when using instructions such as “Fast Read Dual Output
(3Bh)” and “Fast Read Dual I/O (BBh)”. These instructions allow data to be transferred to or from the device
at two to three times the rate of ordinary Serial Flash devices. The Dual SPI Read instructions are ideal for
quickly downloading code to RAM upon power-up (code-shadowing) or for executing non-speed-critical
code directly from the SPI bus (XIP). When using Dual SPI instructions, the DI and DO pins become
bidirectional I/O pins: IO0 and IO1.


6.1     Quad SPI Instructions
The W25Q16JV supports Quad SPI operation when using instructions such as “Fast Read Quad Output
(6Bh)”, and “Fast Read Quad I/O (EBh). These instructions allow data to be transferred to or from the device
four to six times the rate of ordinary Serial Flash. When using Quad SPI instructions, the DI and DO pins
become bidirectional IO0 and IO1, with the additional I/O pins: IO2, IO3.


 6.2     Software Reset & Hardware /RESET pin
The W25Q16JV can be reset to the initial power-on state by a software Reset sequence. This sequence
must include two consecutive instructions: Enable Reset (66h) & Reset (99h). If the instruction sequence
is successfully accepted, the device will take approximately 30µS (tRST) to reset. No instruction will be
accepted during the reset period. For the SOIC-16 and TFBGA packages, W25Q16JV provides a dedicated
hardware /RESET pin. Drive the /RESET pin low for a minimum period of ~1µS (tRESET*) will interrupt any
on-going external/internal operations and reset the device to its initial power-on state. Hardware /RESET
pin has higher priority than other SPI input signals (/CS, CLK, IOs).

Note:
1. Hardware /RESET pin is available on SOIC-16 or TFBGA; please contact Winbond for his package.
2. While a faster /RESET pulse (as short as a few hundred nanoseconds) will often reset the device, a 1us minimum is recommended
   to ensure reliable operation.
3. There is an internal pull-up resistor for the dedicated /RESET pin on the SOIC-16 package. If the reset function is not needed,
   this pin can be left floating in the system.




                                                              -9-
                                                                                                      W25Q16JV

6.3     Write Protection
Applications that use non-volatile memory must take into consideration the possibility of noise and other
adverse system conditions that may compromise data integrity. To address this concern, the W25Q16JV
provides several means to protect the data from inadvertent writes.


6.4     Write Protect Features
     Device resets when VCC is below threshold
     Time delay write disable after Power-up
     Write enable/disable instructions and automatic write disable after erase or program
     Software and Hardware (/WP pin) write protection using Status Registers
     Additional Individual Block/Sector Locks for array protection
     Write Protection using Power-down instruction
     Lock Down write protection for Status Register until the next power-up
     One Time Program (OTP) write protection for array and Security Registers using Status Register *
      * Note: This feature is available upon special order. Please contact Winbond for details.

Upon power-up or at power-down, the W25Q16JV will maintain a reset condition while VCC is below the
threshold value of VWI, (See Power-up Timing and Voltage Levels and Figure 43). While reset, all
operations are disabled and no instructions are recognized. During power-up and after the VCC voltage
exceeds VWI, all program and erase related instructions are further disabled for a time delay of t PUW. This
includes the Write Enable, Page Program, Sector Erase, Block Erase, Chip Erase and the Write Status
Register instructions. Note that the chip select pin (/CS) must track the VCC supply level at power-up until
the VCC-min level and tVSL time delay is reached, and it must also track the VCC supply level at power-
down to prevent adverse command sequence. If needed a pull-up resister on /CS can be used to
accomplish this.
After power-up the device is automatically placed in a write-disabled state with the Status Register Write
Enable Latch (WEL) set to a 0. A Write Enable instruction must be issued before a Page Program, Sector
Erase, Block Erase, Chip Erase or Write Status Register instruction will be accepted. After completing a
program, erase or write instruction the Write Enable Latch (WEL) is automatically cleared to a write-disabled
state of 0.
Software controlled write protection is facilitated using the Write Status Register instruction and setting the
Status Register Protect (SRP, SRL) and Block Protect (CMP, TB, BP[2:0]) bits. These settings allow a
portion or the entire memory array to be configured as read only. Used in conjunction with the Write Protect
(/WP) pin, changes to the Status Register can be enabled or disabled under hardware control. See Status
Register section for further information. Additionally, the Power-down instruction offers an extra level of
write protection as all instructions are ignored except for the Release Power-down instruction.

The W25Q16JV also provides another Write Protect method using the Individual Block Locks. Each 64KB
block (except the top and bottom blocks, total of 30 blocks) and each 4KB sector within the top/bottom
blocks (total of 32 sectors) are equipped with an Individual Block Lock bit. When the lock bit is 0, the
corresponding sector or block can be erased or programmed; when the lock bit is set to 1, Erase or Program
commands issued to the corresponding sector or block will be ignored. When the device is powered on, all
Individual Block Lock bits will be 1, so the entire memory array is protected from Erase/Program. An
“Individual Block Unlock (39h)” instruction must be issued to unlock any specific sector or block.
The WPS bit in Status Register-3 is used to decide which Write Protect scheme should be used. When
WPS=0 (factory default), the device will only utilize CMP, SEC, TB, BP[2:0] bits to protect specific areas of
the array; when WPS=1, the device will utilize the Individual Block Locks for write protection.




                                                                          Publication Release Date: March 22, 2018, 2018
                                                               - 10 -                                         Revision G
                                                                                                      W25Q16JV

7.    STATUS AND CONFIGURATION REGISTERS
Three Status and Configuration Registers are provided for W25Q16JV. The Read Status Register-1/2/3
instructions can be used to provide status on the availability of the flash memory array, whether the
device is write enabled or disabled, the state of write protection, Quad SPI setting, Security Register lock
status, Erase/Program Suspend status, and output driver strength. The Write Status Register instruction
can be used to configure the device write protection features, Quad SPI setting, Security Register OTP
locks, and output driver strength. Write access to the Status Register is controlled by the state of the non-
volatile Status Register Protect bits (SRL), the Write Enable instruction, and during Standard/Dual SPI
operations.


7.1   Status Registers


                                                         S7      S6     S5     S4    S3    S2    S1   S0

                                                        SRP     SEC     TB     BP2   BP1   BP0   WEL BUSY

             STATUS REGISTER PROTECT
                          (volatile/non-volatile)
                        SECTOR PROTECT
                          (volatile/non-volatile)
                   TOP/BOTTOM PROTECT
                        (volatile/non-volatile)
                    BLOCK PROTECT BITS
                        (volatile/non-volatile)
                    WRITE ENABLE LATCH

                      WRITE IN PROGRESS



                                                    Figure 4a. Status Register-1
      Erase/Write In Progress (BUSY) – Status Only
BUSY is a read only bit in the status register (S0) that is set to a 1 state when the device is executing a
Page Program, Quad Page Program, Sector Erase, Block Erase, Chip Erase, Write Status Register or
Erase/Program Security Register instruction. During this time the device will ignore further instructions
except for the Read Status Register and Erase/Program Suspend instruction (see tW , tPP, tSE, tBE, and tCE
in AC Characteristics). When the program, erase or write status/security register instruction has completed,
the BUSY bit will be cleared to a 0 state indicating the device is ready for further instructions.
      Write Enable Latch (WEL) – Status Only
Write Enable Latch (WEL) is a read only bit in the status register (S1) that is set to 1 after executing a Write
Enable Instruction. The WEL status bit is cleared to 0 when the device is write disabled. A write disable
state occurs upon power-up or after any of the following instructions: Write Disable, Page Program, Quad
Page Program, Sector Erase, Block Erase, Chip Erase, Write Status Register, Erase Security Register and
Program Security Register.
      Block Protect Bits (BP2, BP1, BP0) – Volatile/Non-Volatile Writable
The Block Protect Bits (BP2, BP1, BP0) are non-volatile read/write bits in the status register (S4, S3, and
S2) that provide Write Protection control and status. Block Protect bits can be set using the Write Status
Register Instruction (see tW in AC characteristics). All, none or a portion of the memory array can be
protected from Program and Erase instructions (see Status Register Memory Protection table). The factory
default setting for the Block Protection Bits is 0, none of the array protected.




                                                              - 11 -
                                                                                        W25Q16JV

     Top/Bottom Block Protect (TB) – Volatile/Non-Volatile Writable
The non-volatile Top/Bottom bit (TB) controls if the Block Protect Bits (BP2, BP1, BP0) protect from the Top
(TB=0) or the Bottom (TB=1) of the array as shown in the Status Register Memory Protection table. The
factory default setting is TB=0. The TB bit can be set with the Write Status Register Instruction depending
on the state of the SRL and WEL bits.
     Sector/Block Protect Bit (SEC) – Volatile/Non-Volatile Writable
The non-volatile Sector/Block Protect bit (SEC) controls if the Block Protect Bits (BP2, BP1, BP0) protect
either 4KB Sectors (SEC=1) or 64KB Blocks (SEC=0) in the Top (TB=0) or the Bottom (TB=1) of the array
as shown in the Status Register Memory Protection table. The default setting is SEC=0.
     Complement Protect (CMP) – Volatile/Non-Volatile Writable
The Complement Protect bit (CMP) is a non-volatile read/write bit in the status register (S14). It is used in
conjunction with SEC, TB, BP2, BP1 and BP0 bits to provide more flexibility for the array protection. Once
CMP is set to 1, previous array protection set by SEC, TB, BP2, BP1 and BP0 will be reversed. For instance,
when CMP=0, a top 64KB block can be protected while the rest of the array is not; when CMP=1, the top
64KB block will become unprotected while the rest of the array become read-only. Please refer to the Status
Register Memory Protection table for details. The default setting is CMP=0.




                                                           Publication Release Date: March 22, 2018, 2018
                                                  - 12 -                                       Revision G
                                                                                              W25Q16JV

      Status Register Protect SRP, SRL) – Volatile/Non-Volatile Writable
Three Status and Configuration Registers are provided for W25Q16JV. The Read Status Register-1/2/3
instructions can be used to provide status on the availability of the flash memory array, whether the device
is write enabled or disabled, the state of write protection, Quad SPI setting, Security Register lock status,
Erase/Program Suspend status, and output driver strength, The Write Status Register instruction can be
used to configure the device write protection features, Quad SPI setting, Security Register OTP locks,
output driver. Write access to the Status Register is controlled by the state of the non-volatile Status Register
Protect bits (SRP, SRL), the Write Enable instruction, and during Standard/Dual SPI operations, the /WP
pin.

                              Status
 SRL      SRP        /WP      Register             Description


                              Software             /WP pin has no control. The Status register can be written to
 0        0          X
                              Protection           after a Write Enable instruction, WEL=1. [Factory Default]

                              Hardware             When /WP pin is low the Status Register locked and cannot be
 0        1          0
                              Protected            written to.

                              Hardware             When /WP pin is high the Status register is unlocked and can
 0        1          1
                              Unprotected          be written to after a Write Enable instruction, WEL=1.

                              Power Supply         Status Register is protected and cannot be written to again
 1        X          X
                              Lock-Down            until the next power-down, power-up cycle.(1)

                              One Time             Status Register is permanently protected and cannot be written
 1        X          X
                              Program(2)           to. (enabled by adding prefix command AAh, 55h)


       1. When SRL =1 , a power-down, power-up cycle will change SRL =0 state.
       2. Please contact Winbond for details regarding the special instruction sequence.



                                                                .




                                                            - 13 -
                                                                                                          W25Q16JV



                                                         S 15     S 14    S 13       S 12   S 11   S 10   S9    S8

                                                        SUS       CMP     LB 3       LB 2   LB 1   (R )   QE   SR L

                              Suspend Status
                                   (Status- Only)

                        Complement Protect
                (Volatile /Non- Volatile Writable )
                 Security Register Lock Bits
                   (Non-Volatile OTP Writable)

                                      Reserved

                                  Quad Enable
                (Volatile /Non- Volatile Writable )
                       Status Register Lock
                (Volatile /Non- Volatile Writable )




                                                      Figure 4b. Status Register-2


     Erase/Program Suspend Status (SUS) – Status Only
The Suspend Status bit is a read only bit in the status register (S15) that is set to 1 after executing a
Erase/Program Suspend (75h) instruction. The SUS status bit is cleared to 0 by Erase/Program Resume
(7Ah) instruction as well as a power-down, power-up cycle.
     Security Register Lock Bits (LB3, LB2, LB1) –Non-Volatile OTP Writable
The Security Register Lock Bits (LB3, LB2, LB1) are non-volatile One Time Program (OTP) bits in Status
Register (S13, S12, S11) that provide the write protect control and status to the Security Registers. The
default state of LB3-1 is 0, Security Registers are unlocked. LB3-1 can be set to 1 individually using the
Write Status Register instruction. LB3-1 are One Time Programmable (OTP), once it’s set to 1, the
corresponding 256-Byte Security Register will become read-only permanently.
8. QUAD ENABLE (QE) – Volatile/Non-Volatile Writable
The Quad Enable (QE) bit is a non-volatile read/write bit in the status register (S9) that enables Quad SPI
operation. When the QE bit is set to a 0 state (factory default for part numbers with ordering options “IM” &
“JM”), the /HOLD are enabled, the device operates in Standard/Dual SPI modes. When the QE bit is set to
a 1 (factory fixed default for part numbers with ordering options “IQ” &”JQ”), the Quad IO2 and IO3 pins are
enabled, and /HOLD function is disabled, the device operates in Standard/Dual/Quad SPI modes.




                                                                          Publication Release Date: March 22, 2018, 2018
                                                                - 14 -                                        Revision G
                                                                                                  W25Q16JV


                                                       S23     S22      S21     S20   S19   S18   S17   S16

                                                        (R)    DRV1 DRV2        (R)   (R)   WPS   (R)   (R)

                                   Re served

                     Output D river St rengt h
            (Volatile/No n-Volatile Writable)
                                   Re served
                     Write Protect Selection
            (Volatile/No n-Volatile Writable)
                                   Re served

                                   Re served



                                                 Figure 4c. Status Register-3
     Write Protect Selection (WPS) – Volatile/Non-Volatile Writable
The WPS bit is used to select which Write Protect scheme should be used. When WPS=0, the device will
use the combination of CMP, SEC, TB, BP[2:0] bits to protect a specific area of the memory array. When
WPS=1, the device will utilize the Individual Block Locks to protect any individual sector or blocks. The
default value for all Individual Block Lock bits is 1 upon device power on or after reset.
     Output Driver Strength (DRV1, DRV0) – Volatile/Non-Volatile Writable
The DRV1 & DRV0 bits are used to determine the output driver strength for the Read operations.
                                   DRV1, DRV0                       Driver Strength
                                        0, 0                             100%
                                        0, 1                             75%
                                        1, 0                             50%
                                        1, 1                         25% (default)
     Reserved Bits – Non Functional
There are a few reserved Status Register bits that may be read out as a “0” or “1”. It is recommended to
ignore the values of those bits. During a “Write Status Register” instruction, the Reserved Bits can be written
as “0”, but there will not be any effects.




                                                           - 15 -
                                                                                            W25Q16JV

       W25Q16JV Status Register Memory Protection (WPS = 0, CMP = 0)
      STATUS REGISTER(1)                           W25Q16JV (16M-BIT) MEMORY PROTECTION(3)
                                     PROTECTED                PROTECTED           PROTECTED        PROTECTED
SEC    TB    BP2    BP1     BP0
                                      BLOCK(S)                ADDRESSES            DENSITY          PORTION(2)

X       X     0       0       0         NONE                    NONE                 NONE             NONE
 0      0     0       0       1           31            1F0000h – 1FFFFFh             64KB          Upper 1/32
 0      0     0       1       0       30 and 31         1E0000h – 1FFFFFh            128KB          Upper 1/16
 0      0     0       1       1       28 thru 31        1C0000h – 1FFFFFh            256KB          Upper 1/8
 0      0     1       0       0       24 thru 31        180000h – 1FFFFFh            512KB          Upper 1/4
 0      0     1       0       1       16 thru 31        100000h – 1FFFFFh             1MB           Upper 1/2
 0      1     0       0       1            0            000000h – 00FFFFh             64KB          Lower 1/32
 0      1     0       1       0         0 and 1         000000h – 01FFFFh            128KB          Lower 1/16
 0      1     0       1       1         0 thru 3        000000h – 03FFFFh            256KB          Lower 1/8
 0      1     1       0       0         0 thru 7        000000h – 07FFFFh            512KB          Lower 1/4
 0      1     1       0       1        0 thru 15        000000h – 0FFFFFh             1MB           Lower 1/2
X       X     1       1      X         0 thru 31        000000h – 1FFFFFh             2MB              ALL
 1      0     0       0       1           31            1FF000h – 1FFFFFh             4KB           U – 1/512
 1      0     0       1       0           31            1FE000h – 1FFFFFh             8KB           U – 1/256
 1      0     0       1       1           31            1FC000h – 1FFFFFh             16KB          U – 1/128
 1      0     1       0      X            31            1F8000h – 1FFFFFh             32KB           U – 1/64

 1      1     0       0       1            0            000000h – 000FFFh             4KB            L – 1/512
 1      1     0       1       0            0            000000h – 001FFFh             8KB            L – 1/256
 1      1     0       1       1            0            000000h – 003FFFh             16KB           L – 1/128
 1      1     1       0      X             0            000000h – 007FFFh             32KB           L – 1/64

Notes:
 1. X = don’t care
 2. L = Lower; U = Upper
 3. If any Erase or Program command specifies a memory region that contains protected data portion, this command
     will be ignored.




                                                               Publication Release Date: March 22, 2018, 2018
                                                     - 16 -                                        Revision G
                                                                                           W25Q16JV

      W25Q16JV Status Register Memory Protection (WPS = 0, CMP = 1)
      STATUS REGISTER(1)                           W25Q16JV (16M-BIT) MEMORY PROTECTION(3)
                                     PROTECTED                 PROTECTED        PROTECTED         PROTECTED
SEC    TB    BP2    BP1     BP0
                                      BLOCK(S)                 ADDRESSES         DENSITY           PORTION(2)

X       X     0       0       0        0 thru 31        000000h – 1FFFFFh            ALL               ALL
 0      0     0       0       1        0 thru 30       000000h – 1EFFFFh           1,984KB        Lower 31/32
 0      0     0       1       0        0 thru 29       000000h – 1DFFFFh           1,920KB        Lower 15/16
 0      0     0       1       1        0 thru 27       000000h – 1BFFFFh           1,792KB          Lower 7/8
 0      0     1       0       0        0 thru 23        000000h – 17FFFFh          1,536KB          Lower 3/4
 0      0     1       0       1        0 thru 15        000000h – 0FFFFFh            1MB            Lower 1/2
 0      1     0       0       1        1 thru 31        010000h – 1FFFFFh          1,984KB        Upper 31/32
 0      1     0       1       0        2 and 31         020000h – 1FFFFFh          1,920KB        Upper 15/16
 0      1     0       1       1        4 thru 31        040000h – 1FFFFFh          1,792KB          Upper 7/8
 0      1     1       0       0        8 thru 31        080000h – 1FFFFFh          1,536KB          Upper 3/4
 0      1     1       0       1       16 thru 31        100000h – 1FFFFFh            1MB            Upper 1/2
X       X     1       1       X         NONE                     NONE               NONE             NONE
 1      0     0       0       1        0 thru 31       000000h – 1FEFFFh           2,044KB        L – 511/512
 1      0     0       1       0        0 thru 31       000000h – 1FDFFFh           2,040KB        L – 255/256
 1      0     0       1       1        0 thru 31       000000h – 1FBFFFh           2,032KB        L – 127/128
 1      0     1       0       X        0 thru 31        000000h – 1F7FFFh          2,016KB          L – 63/64

 1      1     0       0       1        0 thru 31        001000h – 1FFFFFh          2,044KB        U – 511/512
 1      1     0       1       0        0 thru 31        002000h – 1FFFFFh          2,040KB        U – 255/256
 1      1     0       1       1        0 thru 31        004000h – 1FFFFFh          2,032KB        U – 127/128
 1      1     1       0       X        0 thru 31        008000h – 1FFFFFh          2,016KB          U – 63/64

Notes:
 1. X = don’t care
 2. L = Lower; U = Upper
 3. If any Erase or Program command specifies a memory region that contains protected data portion, this command
      will be ignored.




                                                      - 17 -
                                                                                                              W25Q16JV

     W25Q16JV Individual Block Memory Protection (WPS=1)




                                  Sector 15 (4KB)
                                  Sector 14 (4KB)
               Block 31
                (64KB)




                                   Sector 1 (4KB)                                        Individual Block Locks:
                                   Sector 0 (4KB)
                                                                                         32 Sectors (Top/Bottom)
                                                                                                30 Blocks

                                 Block 30 (64KB)                                     Individual Block Lock:
                                                                                     36h + Address

                                                                                     Individual Block Unlock:
                                                                                     39h + Address

                                                                                     Read Block Lock:
                                                                                     3Dh + Address

                                  Block 1 (64KB)                                     Global Block Lock:
                                                                                     7Eh

                                                                                     Global Block Unlock:
                                  Sector 15 (4KB)
                                  Sector 14 (4KB)                                    98h
               Block 0
               (64KB)




                                   Sector 1 (4KB)
                                   Sector 0 (4KB)



                                              Figure 4d. Individual Block/Sector Locks

Notes:
 1. Individual Block/Sector protection is only valid when WPS=1.
 2. All individual block/sector lock bits are set to 1 by default after power up, all memory array is protected.




                                                                         Publication Release Date: March 22, 2018, 2018
                                                              - 18 -                                         Revision G
                                                                                          W25Q16JV

  9. INSTRUCTIONS
The Standard/Dual/Quad SPI instruction set of the W25Q16JV consists of 48 basic instructions that are
fully controlled through the SPI bus (see Instruction Set Table1-2). Instructions are initiated with the falling
edge of Chip Select (/CS). The first byte of data clocked into the DI input provides the instruction code.
Data on the DI input is sampled on the rising edge of clock with most significant bit (MSB) first.

Instructions vary in length from a single byte to several bytes and may be followed by address bytes, data
bytes, dummy bytes (don’t care), and in some cases, a combination. Instructions are completed with the
rising edge of edge /CS. Clock relative timing diagrams for each instruction are included in Figures 5 through
57. All read instructions can be completed after any clocked bit. However, all instructions that Write,
Program or Erase must complete on a byte boundary (/CS driven high after a full 8-bits have been clocked)
otherwise the instruction will be ignored. This feature further protects the device from inadvertent writes.
Additionally, while the memory is being programmed or erased, or when the Status Register is being written,
all instructions except for Read Status Register will be ignored until the program or erase cycle has
completed.

9.1   Device ID and Instruction Set Tables
      Manufacturer and Device Identification

   MANUFACTURER ID                     (MF7 - MF0)

   Winbond Serial Flash                EFh


   Device ID                           (ID7 - ID0)                  (ID15 - ID0)

   Instruction                         ABh, 90h, 92h, 94h           9Fh

   W25Q16JV-IQ/JQ                      14h                          4015h
   W25Q16JV-IM*/JM*                    14h                          7015h
                                        Note: For DTR, QPI supporting, please refer to W25Q16JV DTR datasheet.




                                                     - 19 -
                                                                                                    W25Q16JV

      Instruction Set Table 1 (Standard SPI Instructions) (1)
Data Input Output               Byte 1      Byte 2        Byte 3        Byte 4       Byte 5        Byte 6     Byte 7

Number of Clock(1-1-1)            8            8             8            8             8            8          8
Write Enable                     06h
Volatile SR Write Enable         50h
Write Disable                    04h
Release Power-down / ID          ABh        Dummy         Dummy         Dummy      (ID7-ID0)(2)
Manufacturer/Device ID           90h        Dummy         Dummy          00h       (MF7-MF0)      (ID7-ID0)
JEDEC ID                         9Fh      (MF7-MF0)      (ID15-ID8)    (ID7-ID0)
Read Unique ID                   4Bh        Dummy         Dummy         Dummy        Dummy        (UID63-0)
Read Data                        03h       A23-A16        A15-A8        A7-A0       (D7-D0)
Fast Read                        0Bh       A23-A16        A15-A8        A7-A0        Dummy        (D7-D0)
Page Program                     02h       A23-A16        A15-A8        A7-A0        D7-D0        D7-D0(3)
Sector Erase (4KB)               20h       A23-A16        A15-A8        A7-A0
Block Erase (32KB)               52h       A23-A16        A15-A8        A7-A0
Block Erase (64KB)               D8h       A23-A16        A15-A8        A7-A0
Chip Erase                      C7h/60h
Read Status Register-1           05h       (S7-S0)(2)
                          (4)
Write Status Register-1          01h       (S7-S0)(4)
Read Status Register-2           35h      (S15-S8)(2)
Write Status Register-2          31h       (S15-S8)
Read Status Register-3           15h      (S23-S16)(2)
Write Status Register-3          11h      (S23-S16)
Read SFDP Register               5Ah          00            00          A7-A0        Dummy        (D7-D0)
                          (5)
Erase Security Register          44h       A23-A16        A15-A8        A7-A0
Program Security Register(5)     42h       A23-A16        A15-A8        A7-A0       D7-D0(3)
                          (5)
Read Security Register           48h       A23-A16        A15-A8        A7-A0        Dummy        (D7-D0)
Global Block Lock                7Eh
Global Block Unlock              98h
Read Block Lock                  3Dh       A23-A16        A15-A8        A7-A0        (L7-L0)
Individual Block Lock            36h       A23-A16        A15-A8        A7-A0
Individual Block Unlock          39h       A23-A16        A15-A8        A7-A0
Erase / Program Suspend          75h
Erase / Program Resume           7Ah
Power-down                       B9h
Enable Reset                     66h
Reset Device                     99h




                                                                      Publication Release Date: March 22, 2018, 2018
                                                           - 20 -                                         Revision G
                                                                                                                           W25Q16JV

       Instruction Set Table 2 (Dual/Quad SPI Instructions)(1)
Data Input Output          Byte 1    Byte 2          Byte 3         Byte 4       Byte 5        Byte 6           Byte 7      Byte 8      Byte 9
Number of Clock(1-1-2)       8         8               8              8            4             4                4           4           4
Fast Read Dual Output       3Bh     A23-A16         A15-A8          A7-A0        Dummy         Dummy        (D7-D0)(7)

Number of Clock(1-2-2)       8          4              4               4           4              4               4            4           4

Fast Read Dual I/O         BBh      A23-A16(6)      A15-A8(6)       A7-A0(6)    Dummy(11)     (D7-D0)(7)
                                              (6)             (6)         (6)          (11)
Mftr./Device ID Dual I/O    92h     A23-A16         A15-A8           00         Dummy         (MF7-MF0)     (ID7-ID0)(7)

Number of Clock(1-1-4)       8          8              8               8           2              2               2            2           2

Quad Input Page Program     32h     A23-A16         A15-A8          A7-A0       (D7-D0) (9)
                                                                                              (D7-D0) (3)
                                                                                                            …

Fast Read Quad Output       6Bh     A23-A16         A15-A8          A7-A0        Dummy         Dummy            Dummy       Dummy      (D7-D0)(10)
                                        (8)             (8)            (8)
Number of Clock(1-4-4)       8         2               2              2            2              2               2            2           2

Mftr./Device ID Quad I/O    94h     A23-A16         A15-A8            00        Dummy(11)      Dummy            Dummy      (MF7-MF0)   (ID7-ID0)

Fast Read Quad I/O         EBh      A23-A16         A15-A8          A7-A0       Dummy(11)      Dummy            Dummy       (D7-D0)

Set Burst with Wrap         77h      Dummy          Dummy           Dummy        W8-W0




       Notes:
     1.  Data bytes are shifted with Most Significant Bit first. Byte fields with data in parenthesis “( )” indicate data
         output from the device on either 1, 2 or 4 IO pins.
     2. The Status Register contents and Device ID will repeat continuously until /CS terminates the instruction.
     3. At least one byte of data input is required for Page Program, Quad Page Program and Program Security
         Registers, up to 256 bytes of data input. If more than 256 bytes of data are sent to the device, the
         addressing will wrap to the beginning of the page and overwrite previously sent data.
     4. Write Status Register-1 (01h) can also be used to program Status Register-1&2, see section 8.2.5.
     5. Security Register Address:
                    Security Register 1: A23-16 = 00h; A15-8 = 10h; A7-0 = byte address
                    Security Register 2: A23-16 = 00h; A15-8 = 20h; A7-0 = byte address
                    Security Register 3: A23-16 = 00h; A15-8 = 30h; A7-0 = byte address
     6. Dual SPI address input format:
                    IO0 = A22, A20, A18, A16, A14, A12, A10, A8 A6, A4, A2, A0, M6, M4, M2, M0
                    IO1 = A23, A21, A19, A17, A15, A13, A11, A9 A7, A5, A3, A1, M7, M5, M3, M1
     7. Dual SPI data output format:
                    IO0 = (D6, D4, D2, D0)
                    IO1 = (D7, D5, D3, D1)
     8. Quad SPI address input format:                                    Set Burst with Wrap input format:
                    IO0 = A20, A16, A12, A8, A4, A0, M4, M0                   IO0 = x, x, x, x, x, x, W4, x
                    IO1 = A21, A17, A13, A9, A5, A1, M5, M1                   IO1 = x, x, x, x, x, x, W5, x
                    IO2 = A22, A18, A14, A10, A6, A2, M6, M2                  IO2 = x, x, x, x, x, x, W6, x
                    IO3 = A23, A19, A15, A11, A7, A3, M7, M3                  IO3 = x, x, x, x, x, x, x, x
     9. Quad SPI data input/output format:
                    IO0 = (D4, D0, …..)
                    IO1 = (D5, D1, …..)
                    IO2 = (D6, D2, …..)
                    IO3 = (D7, D3, …..)
     10. Fast Read Quad I/O data output format:
                    IO0 = (x, x, x, x, D4, D0, D4, D0)
                    IO1 = (x, x, x, x, D5, D1, D5, D1)
                    IO2 = (x, x, x, x, D6, D2, D6, D2)
                    IO3 = (x, x, x, x, D7, D3, D7, D3)
     11. The first dummy is M7-M0 should be set to Fxh



                                                                      - 21 -
                                                                                                   W25Q16JV

9.2 Instruction Descriptions
     Write Enable (06h)
The Write Enable instruction (Figure 5) sets the Write Enable Latch (WEL) bit in the Status Register to a 1.
The WEL bit must be set prior to every Page Program, Quad Page Program, Sector Erase, Block Erase,
Chip Erase, Write Status Register and Erase/Program Security Registers instruction. The Write Enable
instruction is entered by driving /CS low, shifting the instruction code “06h” into the Data Input (DI) pin on
the rising edge of CLK, and then driving /CS high.



                     /CS
                             Mode 3       0      1    2    3       4     5   6     7   Mode 3
                     CLK     Mode 0                                                    Mode 0

                                                     Instruction (06h)
                       DI
                     (IO0)


                      DO                             High Impedance
                     (IO1)



                                              Figure 5. Write Enable Instruction
     Write Enable for Volatile Status Register (50h)
The non-volatile Status Register bits described in section 7.1 can also be written to as volatile bits. This
gives more flexibility to change the system configuration and memory protection schemes quickly without
waiting for the typical non-volatile bit write cycles or affecting the endurance of the Status Register non-
volatile bits. To write the volatile values into the Status Register bits, the Write Enable for Volatile Status
Register (50h) instruction must be issued prior to a Write Status Register (01h) instruction. Write Enable for
Volatile Status Register instruction (Figure 6) will not set the Write Enable Latch (WEL) bit, it is only valid
for the Write Status Register instruction to change the volatile Status Register bit values.



                     /CS
                             Mode 3       0      1    2    3       4     5   6     7   Mode 3
                     CLK     Mode 0                                                    Mode 0

                                                     Instruction (50h)
                       DI
                     (IO0)


                      DO                             High Impedance
                     (IO1)



                              Figure 6. Write Enable for Volatile Status Register Instruction




                                                                       Publication Release Date: March 22, 2018, 2018
                                                          - 22 -                                           Revision G
                                                                                                                                                           W25Q16JV

      Write Disable (04h)
The Write Disable instruction (Figure 7) resets the Write Enable Latch (WEL) bit in the Status Register to a
0. The Write Disable instruction is entered by driving /CS low, shifting the instruction code “04h” into the DI
pin and then driving /CS high. Note that the WEL bit is automatically reset after Power-up and upon
completion of the Write Status Register, Erase/Program Security Registers, Page Program, Quad Page
Program, Sector Erase, Block Erase, Chip Erase and Reset instructions.


                              /CS
                                           Mode 3           0       1        2          3       4        5        6        7        Mode 3
                              CLK          Mode 0                                                                                   Mode 0

                                                                            Instruction (04h)
                                DI
                              (IO0)


                               DO                                           High Impedance
                              (IO1)

                                                                Figure 7. Write Disable Instruction
      Read Status Register-1 (05h), Status Register-2 (35h) & Status Register-3 (15h)
The Read Status Register instructions allow the 8-bit Status Registers to be read. The instruction is entered
by driving /CS low and shifting the instruction code “05h” for Status Register-1, “35h” for Status Register-2
or “15h” for Status Register-3 into the DI pin on the rising edge of CLK. The status register bits are then
shifted out on the DO pin at the falling edge of CLK with most significant bit (MSB) first as shown in Figure
8. Refer to section 7.1 for Status Register descriptions.

The Read Status Register instruction may be used at any time, even while a Program, Erase or Write Status
Register cycle is in progress. This allows the BUSY status bit to be checked to determine when the cycle
is complete and if the device can accept another instruction. The Status Register can be read continuously,
as shown in Figure 8. The instruction is completed by driving /CS high.


    /CS
            Mode 3        0     1      2     3      4   5       6       7       8       9   10      11       12       13   14   15     16    17   18   19   20   21      22   23
    CLK     Mode 0

                                Instruction (05h/35h/15h)
      DI
    (IO0)
                                                                                    Status Register-1/2/3 out                                Status Register-1/2/3 out
     DO                               High Impedance
                                                                            7       6       5       4        3    2        1    0     7      6    5    4    3    2    1       0    7
    (IO1)
              *   = MSB                                                     *                                                         *

                                                        Figure 8. Read Status Register Instruction




                                                                                        - 23 -
                                                                                                                 W25Q16JV

     Write Status Register-1 (01h), Status Register-2 (31h) & Status Register-3 (11h)
The Write Status Register instruction allows the Status Registers to be written. The writable Status Register
bits include: SEC, TB, BP[2:0] in Status Register-1; CMP, LB[3:1], QE, SRL in Status Register-2; DRV1,
DRV0, WPS in Status Register-3. All other Status Register bit locations are read-only and will not be
affected by the Write Status Register instruction. LB[3:1] are non-volatile OTP bits, once it is set to 1, it
cannot be cleared to 0.

To write non-volatile Status Register bits, a standard Write Enable (06h) instruction must previously have
been executed for the device to accept the Write Status Register instruction (Status Register bit WEL must
equal 1). Once write enabled, the instruction is entered by driving /CS low, sending the instruction code
“01h/31h/11h”, and then writing the status register data byte as illustrated in Figure 9a.

To write volatile Status Register bits, a Write Enable for Volatile Status Register (50h) instruction must have
been executed prior to the Write Status Register instruction (Status Register bit WEL remains 0). However,
SRL and LB[3:1] cannot be changed from “1” to “0” because of the OTP protection for these bits. Upon
power off or the execution of a Software/Hardware Reset, the volatile Status Register bit values will be lost,
and the non-volatile Status Register bit values will be restored.

During non-volatile Status Register write operation (06h combined with 01h/31h/11h), after /CS is driven
high, the self-timed Write Status Register cycle will commence for a time duration of tW (See AC
Characteristics). While the Write Status Register cycle is in progress, the Read Status Register instruction
may still be accessed to check the status of the BUSY bit. The BUSY bit is a 1 during the Write Status
Register cycle and a 0 when the cycle is finished and ready to accept other instructions again. After the
Write Status Register cycle has finished, the Write Enable Latch (WEL) bit in the Status Register will be
cleared to 0.

During volatile Status Register write operation (50h combined with 01h/31h/11h), after /CS is driven high,
the Status Register bits will be refreshed to the new values within the time period of t SHSL2 (See AC
Characteristics). BUSY bit will remain 0 during the Status Register bit refresh period.

Refer to section 7.1 for Status Register descriptions.


         /CS
                Mode 3        0   1     2    3    4    5      6     7       8       9   10    11   12   13   14   15   Mode 3
         CLK    Mode 0                                                                                                 Mode 0
                                         Instruction
                                                                                        Register-1/2/3 in
                                       (01h/31h/11h)
          DI
                                                                        7       6       5    4     3    2    1    0
        (IO0)
                                                                        *
         DO                                                High Impedance
        (IO1)
                    * = MSB
                                      Figure 9a. Write Status Register-1/2/3 Instruction




                                                                        Publication Release Date: March 22, 2018, 2018
                                                           - 24 -                                           Revision G
                                                                                                                                            W25Q16JV

The W25Q16JV is also backward compatible to Winbond’s previous generations of serial flash memories,
in which the Status Register-1&2 can be written using a single “Write Status Register-1 (01h)” command.
To complete the Write Status Register-1&2 instruction, the /CS pin must be driven high after the sixteenth
bit of data that is clocked in as shown in Figure 9c. If /CS is driven high after the eighth clock, the Write
Status Register-1 (01h) instruction will only program the Status Register-1, the Status Register-2 will not
be affected (Previous generations will clear CMP and QE bits).



    /CS
           Mode 3        0   1    2    3    4        5   6   7       8       9     10   11   12   13    14   15    16    17     18    19    20    21   22   23   Mode 3
    CLK    Mode 0                                                                                                                                                Mode 0

                                 Instruction (01h)                               Status Register 1 in                         Status Register 2 in
     DI
                                                                 7       6        5     4    3    2     1    0    15    14     13    12    11    10    9    8
   (IO0)
                                                                 *                                                *
    DO                                                                           High Impedance
   (IO1)
               * = MSB

                                                Figure 9c. Write Status Register-1/2 Instruction




                                                                                 - 25 -
                                                                                                                                 W25Q16JV

      Read Data (03h)
The Read Data instruction allows one or more data bytes to be sequentially read from the memory. The
instruction is initiated by driving the /CS pin low and then shifting the instruction code “03h” followed by a
24-bit address (A23-A0) into the DI pin. The code and address bits are latched on the rising edge of the
CLK pin. After the address is received, the data byte of the addressed memory location will be shifted out
on the DO pin at the falling edge of CLK with most significant bit (MSB) first. The address is automatically
incremented to the next higher address after each byte of data is shifted out allowing for a continuous
stream of data. This means that the entire memory can be accessed with a single instruction as long as the
clock continues. The instruction is completed by driving /CS high.

The Read Data instruction sequence is shown in Figure 14. If a Read Data instruction is issued while an
Erase, Program or Write cycle is in process (BUSY=1) the instruction is ignored and will not have any
effects on the current cycle. The Read Data instruction allows clock rates from D.C. to a maximum of f R
(see AC Electrical Characteristics).




    /CS
            Mode 3        0   1    2    3    4        5   6   7    8    9    10       28      29   30   31   32   33   34    35   36    37   38   39
    CLK     Mode 0

                                  Instruction (03h)                          24-Bit Address
      DI
                                                                  23   22   21       3     2       1    0
    (IO0)
                                                                  *                                                        Data Out 1
     DO                                          High Impedance
                                                                                                             7    6    5     4    3     2    1    0    7
    (IO1)

              *   = MSB                                                                                      *


                                                          Figure 14. Read Data Instruction




                                                                                   Publication Release Date: March 22, 2018, 2018
                                                                       - 26 -                                          Revision G
                                                                                                                                                            W25Q16JV

      Fast Read (0Bh)
The Fast Read instruction is similar to the Read Data instruction except that it can operate at the highest
possible frequency of FR (see AC Electrical Characteristics). This is accomplished by adding eight “dummy”
clocks after the 24-bit address as shown in Figure 16. The dummy clocks allow the devices internal circuits
additional time for setting up the initial address. During the dummy clocks the data value on the DO pin is
a “don’t care”.




    /CS
            Mode 3          0    1    2    3    4        5    6       7       8       9       10            28       29       30       31
    CLK     Mode 0

                                     Instruction (0Bh)                                        24-Bit Address
      DI
                                                                          23      22      21                3        2        1        0
    (IO0)
                                                                          *
     DO                                             High Impedance
    (IO1)

                  * = MSB
    /CS
             31     32   33     34   35   36   37    38      39   40      41      42      43       44   45       46       47       48       49   50    51   52    53   54   55
    CLK

                                Dummy Clocks
      DI
            0
    (IO0)
                                                                                      Data Out 1                                                     Data Out 2
     DO                     High Impedance
                                                                  7       6       5       4        3    2        1        0        7        6    5     4    3     2    1    0    7
    (IO1)
                                                                  *                                                                *


                                                             Figure 16. Fast Read Instruction




                                                                                  - 27 -
                                                                                                                                                             W25Q16JV

      Fast Read Dual Output (3Bh)
The Fast Read Dual Output (3Bh) instruction is similar to the standard Fast Read (0Bh) instruction except
that data is output on two pins; IO0 and IO1. This allows data to be transferred at twice the rate of standard
SPI devices. The Fast Read Dual Output instruction is ideal for quickly downloading code from Flash to
RAM upon power-up or for applications that cache code-segments to RAM for execution.

Similar to the Fast Read instruction, the Fast Read Dual Output instruction can operate at the highest
possible frequency of FR (see AC Electrical Characteristics). This is accomplished by adding eight “dummy”
clocks after the 24-bit address as shown in Figure 18. The dummy clocks allow the device's internal circuits
additional time for setting up the initial address. The input data during the dummy clocks is “don’t care”.
However, the IO0 pin should be high-impedance prior to the falling edge of the first data out clock.



    /CS
            Mode 3          0      1    2    3    4        5    6       7       8       9       10             28       29       30       31
    CLK     Mode 0

                                       Instruction (3Bh)                                        24-Bit Address
      DI
                                                                            23       22     21                 3        2        1        0
    (IO0)
                                                                            *
     DO                                               High Impedance
    (IO1)


    /CS
                  * = MSB
             31     32   33      34    35   36   37     38     39   40      41       42     43        44   45       46       47       48       49   50   51   52   53   54   55
    CLK
                                                                                    IO0 switches from
                                 Dummy Clocks                                       Input to Output
      DI
            0                                                       6       4       2       0        6     4        2        0        6        4    2    0    6    4    2    0    6
    (IO0)


     DO                         High Impedance
                                                                    7       5       3       1        7     5        3        1        7        5    3    1    7    5    3    1    7
    (IO1)
                                                                    * Data Out 1                     * Data Out 2                     * Data Out 3            * Data Out 4

                                                      Figure 18. Fast Read Dual Output Instruction




                                                                                                     Publication Release Date: March 22, 2018, 2018
                                                                                - 28 -                                                   Revision G
                                                                                                                                      W25Q16JV

     Fast Read Quad Output (6Bh)
The Fast Read Quad Output (6Bh) instruction is similar to the Fast Read Dual Output (3Bh) instruction
except that data is output on four pins, IO0, IO1, IO2, and IO3. The Quad Enable (QE) bit in Status Register-
2 must be set to 1 before the device will accept the Fast Read Quad Output Instruction. The Fast Read
Quad Output Instruction allows data to be transferred at four times the rate of standard SPI devices.

The Fast Read Quad Output instruction can operate at the highest possible frequency of F R (see AC
Electrical Characteristics). This is accomplished by adding eight “dummy” clocks after the 24-bit address
as shown in Figure 20. The dummy clocks allow the device's internal circuits additional time for setting up
the initial address. The input data during the dummy clocks is “don’t care”. However, the IO pins should be
high-impedance prior to the falling edge of the first data out clock.



              /CS
                     Mode 3          0      1    2    3    4        5     6       7       8       9       10            28       29       30       31
              CLK    Mode 0

                                                Instruction (6Bh)                                         24-Bit Address

              IO0                                                                     23       22     21                3        2        1        0

                                                               High Impedance         *
              IO1
                                                               High Impedance
              IO2
                                                               High Impedance
              IO3


                           * = MSB
              /CS
                      31     32   33      34    35   36   37    38      39    40      41       42     43       44   45       46       47
              CLK
                                                                                              IO0 switches from
                                          Dummy Clocks                                        Input to Output

              IO0    0                                                        4       0       4       0        4    0        4        0        4

                                         High Impedance
              IO1                                                             5       1       5       1        5    1        5        1        5

                                         High Impedance
              IO2                                                             6       2       6       2        6    2        6        2        6

                                         High Impedance
              IO3                                                             7       3       7       3        7    3        7        3        7

                                                                              Byte 1          Byte 2           Byte 3        Byte 4


                                           Figure 20. Fast Read Quad Output Instruction




                                                                 - 29 -
                                                                                                                                                                                     W25Q16JV

           Fast Read Dual I/O (BBh)
The Fast Read Dual I/O (BBh) instruction allows for improved random access while maintaining two IO
pins, IO0 and IO1. It is similar to the Fast Read Dual Output (3Bh) instruction but with the capability to input
the Address bits (A23-0) two bits per clock. This reduced instruction overhead may allow for code execution
(XIP) directly from the Dual SPI in some applications.




     /CS
             Mode 3             0       1       2       3        4       5       6       7        8       9       10       11       12       13       14       15   16   17     18   19   20   21     22   23
     CLK     Mode 0

                                            Instruction (BBh)                                         A23-16                                 A15-8                       A7-0                  M7-0
       DI
                                                                                             22       20      18       16       14       12       10           8    6    4    2      0    6    4    2      0
     (IO0)


      DO
                                                                                             23       21      19       17       15       13       11           9    7    5    3      1    7    5    3      1
     (IO1)
                                                                                             *                                                                                            *
                 * = MSB
     /CS
              23    24     25        26     27      28      29       30      31      32      33       34      35       36       37       38       39
     CLK
                                    IOs switch from
                                    Input to Output
       DI
             0     6       4        2       0       6       4        2       0       6       4        2       0        6        4        2        0        6
     (IO0)


      DO
             1     7       5        3       1       7       5        3       1       7       5        3       1        7        5        3        1        7
     (IO1)
                   *           Byte 1               *           Byte 2               *           Byte 3                *            Byte 4



                                          Figure 22. Fast Read Dual I/O Instruction (M7-M0 should be set to Fxh)




                                                                                                                       Publication Release Date: March 22, 2018, 2018
                                                                                                   - 30 -                                                  Revision G
                                                                                                                                   W25Q16JV

          Fast Read Quad I/O (EBh)
The Fast Read Quad I/O (EBh) instruction is similar to the Fast Read Dual I/O (BBh) instruction except that
address and data bits are input and output through four pins IO0, IO1, IO2 and IO3 and four Dummy clocks
are required in SPI mode prior to the data output. The Quad I/O dramatically reduces instruction overhead
allowing faster random access for code execution (XIP) directly from the Quad SPI. The Quad Enable bit
(QE) of Status Register-2 must be set to enable the Fast Read Quad I/O Instruction.




    /CS
           Mode 3   0   1    2    3    4    5   6   7    8       9    10      11   12     13   14     15   16   17   18   19   20   21    22    23
   CLK     Mode 0
                                                                                                                                         IOs switch from
                            Instruction (EBh)           A23-16        A15-8        A7-0        M7-0        Dummy     Dummy
                                                                                                                                         Input to Output

    IO0                                                 20   16      12    8       4    0      4    0                          4    0    4     0     4


    IO1                                                 21   17      13    9       5    1      5    1                          5    1    5     1     5


    IO2                                                 22   18      14    10      6    2      6    2                          6    2    6     2     6


    IO3                                                 23   19      15    11      7    3      7    3                          7    3    7     3     7

                                                                                                                               Byte 1     Byte 2     Byte 3




                            Figure 24a. Fast Read Quad I/O Instruction (M7-M0 should be set to Fxh)


Fast Read Quad I/O with “8/16/32/64-Byte Wrap Around”

The Fast Read Quad I/O instruction can also be used to access a specific portion within a page by issuing
a “Set Burst with Wrap” (77h) command prior to EBh. The “Set Burst with Wrap” (77h) command can either
enable or disable the “Wrap Around” feature for the following EBh commands. When “Wrap Around” is
enabled, the data being accessed can be limited to either an 8, 16, 32 or 64-byte section of a 256-byte
page. The output data starts at the initial address specified in the instruction, once it reaches the ending
boundary of the 8/16/32/64-byte section, the output will wrap around to the beginning boundary
automatically until /CS is pulled high to terminate the command.

The Burst with Wrap feature allows applications that use cache to quickly fetch a critical address and then
fill the cache afterwards within a fixed length (8/16/32/64-byte) of data without issuing multiple read
commands.

The “Set Burst with Wrap” instruction allows three “Wrap Bits”, W6-4 to be set. The W4 bit is used to enable
or disable the “Wrap Around” operation while W6-5 are used to specify the length of the wrap around section
within a page. Refer to section 8.2.37 for detail descriptions.




                                                                     - 31 -
                                                                                                                         W25Q16JV

         Set Burst with Wrap (77h)
The Set Burst with Wrap (77h) instruction is used in conjunction with “Fast Read Quad I/O” instructions to
access a fixed length of 8/16/32/64-byte section within a 256-byte page. Certain applications can benefit
from this feature and improve the overall system code execution performance.
Similar to a Quad I/O instruction, the Set Burst with Wrap instruction is initiated by driving the /CS pin low
and then shifting the instruction code “77h” followed by 24 dummy bits and 8 “Wrap Bits”, W7-0. The
instruction sequence is shown in Figure 28. Wrap bit W7 and the lower nibble W3-0 are not used.
                                             W4 = 0                                           W4 =1 (DEFAULT)
               W6, W5
                            Wrap Around              Wrap Length                     Wrap Around               Wrap Length
                0   0              Yes                      8-byte                           No                          N/A
                0   1              Yes                      16-byte                          No                          N/A
                1   0              Yes                      32-byte                          No                          N/A
                1   1              Yes                      64-byte                          No                          N/A

Once W6-4 is set by a Set Burst with Wrap instruction, the following “Fast Read Quad I/O” instructions will
use the W6-4 setting to access the 8/16/32/64-byte section within any page. To exit the “Wrap Around”
function and return to normal read operation, another Set Burst with Wrap instruction should be issued to
set W4 = 1. The default value of W4 upon power on or after a software/hardware reset is 1.




         /CS
                Mode 3     0   1     2      3    4      5     6      7       8       9   10      11   12      13    14     15   Mode 3
         CLK    Mode 0                                                                                                          Mode 0
                                                                          don't          don't        don't
                                    Instruction (77h)                     care           care         care
                                                                                                                   Wrap Bit

         IO0                                                             X       X       X    X       X    X       w4     X


         IO1                                                             X       X       X    X       X    X       w5     X


         IO2                                                             X       X       X    X       X    X       w6     X


         IO3                                                             X       X       X    X       X    X       X      X




                                         Figure 28. Set Burst with Wrap Instruction




                                                                         Publication Release Date: March 22, 2018, 2018
                                                            - 32 -                                           Revision G
                                                                                                                                                                                                   W25Q16JV

          Page Program (02h)
The Page Program instruction allows from one byte to 256 bytes (a page) of data to be programmed at
previously erased (FFh) memory locations. A Write Enable instruction must be executed before the device
will accept the Page Program Instruction (Status Register bit WEL= 1). The instruction is initiated by driving
the /CS pin low then shifting the instruction code “02h” followed by a 24-bit address (A23-A0) and at least
one data byte, into the DI pin. The /CS pin must be held low for the entire length of the instruction while
data is being sent to the device. The Page Program instruction sequence is shown in Figure 29.
If an entire 256 byte page is to be programmed, the last address byte (the 8 least significant address bits)
should be set to 0. If the last address byte is not zero, and the number of clocks exceeds the remaining
page length, the addressing will wrap to the beginning of the page. In some cases, less than 256 bytes (a
partial page) can be programmed without having any effect on other bytes within the same page. One
condition to perform a partial page program is that the number of clocks cannot exceed the remaining page
length. If more than 256 bytes are sent to the device the addressing will wrap to the beginning of the page
and overwrite previously sent data.
As with the write and erase instructions, the /CS pin must be driven high after the eighth bit of the last byte
has been latched. If this is not done the Page Program instruction will not be executed. After /CS is driven
high, the self-timed Page Program instruction will commence for a time duration of tpp (See AC
Characteristics). While the Page Program cycle is in progress, the Read Status Register instruction may
still be accessed for checking the status of the BUSY bit. The BUSY bit is a 1 during the Page Program
cycle and becomes a 0 when the cycle is finished and the device is ready to accept other instructions again.
After the Page Program cycle has finished the Write Enable Latch (WEL) bit in the Status Register is cleared
to 0. The Page Program instruction will not be executed if the addressed page is protected by the Block
Protect (CMP, SEC, TB, BP2, BP1, and BP0) bits or the Individual Block/Sector Locks.


   /CS
          Mode 3            0       1        2       3       4       5       6       7       8       9       10            28       29       30   31       32       33       34       35       36       37       38       39
  CLK     Mode 0

                                            Instruction (02h)                                                24-Bit Address                                                      Data Byte 1
    DI
                                                                                         23      22      21                3        2        1    0        7        6        5        4        3        2        1        0
  (IO0)
                                                                                         *                                                             *
              * = MSB
   /CS
                                                                                                                                                       2072

                                                                                                                                                                2073

                                                                                                                                                                         2074

                                                                                                                                                                                   2075

                                                                                                                                                                                           2076

                                                                                                                                                                                                    2077

                                                                                                                                                                                                             2078

                                                                                                                                                                                                                      2079

           39    40     41      42      43       44      45      46      47      48      49      50      51       52   53       54       55                                                                                    Mode 3
  CLK                                                                                                                                                                                                                          Mode 0

                                    Data Byte 2                                                      Data Byte 3                                                         Data Byte 256
    DI
          0     7       6       5       4        3       2       1       0       7       6       5       4        3    2        1        0             7        6        5        4        3        2        1        0
  (IO0)
                *                                                                *                                                                     *


                                                                              Figure 29. Page Program Instruction




                                                                                                             - 33 -
                                                                                                                                                     W25Q16JV

        Quad Input Page Program (32h)
The Quad Page Program instruction allows up to 256 bytes of data to be programmed at previously erased
(FFh) memory locations using four pins: IO 0, IO1, IO2, and IO3. The Quad Page Program can improve
performance for PROM Programmer and applications that have slow clock speeds <5MHz. Systems with
faster clock speed will not realize much benefit for the Quad Page Program instruction since the inherent
page program time is much greater than the time it take to clock-in the data.
To use Quad Page Program the Quad Enable (QE) bit in Status Register-2 must be set to 1. A Write Enable
instruction must be executed before the device will accept the Quad Page Program instruction (Status
Register-1, WEL=1). The instruction is initiated by driving the /CS pin low then shifting the instruction code
“32h” followed by a 24-bit address (A23-A0) and at least one data byte, into the IO pins. The /CS pin must
be held low for the entire length of the instruction while data is being sent to the device. All other functions
of Quad Page Program are identical to standard Page Program. The Quad Page Program instruction
sequence is shown in Figure 30.



           /CS
                  Mode 3             0       1         2       3       4   5   6        7       8       9       10             28       29       30   31
           CLK    Mode 0

                                                      Instruction (32h)                                         24-Bit Address

            IO0                                                                             23      22      21                 3        2        1    0

                                                                                            *
            IO1

            IO2

            IO3


                       * = MSB
           /CS
                                                                                    536

                                                                                            537

                                                                                                    538

                                                                                                            539

                                                                                                                     540

                                                                                                                            541

                                                                                                                                    542

                                                                                                                                             543



                    31    32     33      34       35       36      37                                                                                      Mode 3
           CLK                                                                                                                                             Mode 0
                                                                                    Byte            Byte             Byte           Byte
                         Byte 1          Byte 2            Byte 3
                                                                                    253             254              255            256
            IO0    0     4       0       4        0        4       0                4       0       4       0        4     0        4        0


            IO1          5       1       5        1        5       1                5       1       5       1        5     1        5        1


            IO2          6       2       6        2        6       2                6       2       6       2        6     2        6        2


            IO3          7       3       7        3        7       3                7       3       7       3        7     3        7        3

                         *               *                 *                        *               *                *              *
                                                 Figure 30. Quad Input Page Program Instruction




                                                                                          Publication Release Date: March 22, 2018, 2018
                                                                           - 34 -                                             Revision G
                                                                                                             W25Q16JV

9.3   Sector Erase (20h)
The Sector Erase instruction sets all memory within a specified sector (4K-bytes) to the erased state of all
1s (FFh). A Write Enable instruction must be executed before the device will accept the Sector Erase
Instruction (Status Register bit WEL must equal 1). The instruction is initiated by driving the /CS pin low
and shifting the instruction code “20h” followed a 24-bit sector address (A23-A0). The Sector Erase
instruction sequence is shown in Figure 31.

The /CS pin must be driven high after the eighth bit of the last byte has been latched. If this is not done the
Sector Erase instruction will not be executed. After /CS is driven high, the self-timed Sector Erase instruction
will commence for a time duration of tSE (See AC Characteristics). While the Sector Erase cycle is in
progress, the Read Status Register instruction may still be accessed for checking the status of the BUSY
bit. The BUSY bit is a 1 during the Sector Erase cycle and becomes a 0 when the cycle is finished and the
device is ready to accept other instructions again. After the Sector Erase cycle has finished the Write Enable
Latch (WEL) bit in the Status Register is cleared to 0. The Sector Erase instruction will not be executed if
the addressed page is protected by the Block Protect (CMP, SEC, TB, BP2, BP1, and BP0) bits or the
Individual Block/Sector Locks.


              /CS


                      Mode 3       0   1    2    3    4        5     6   7    8    9        29      30   31   Mode 3
              CLK     Mode 0                                                                                  Mode 0

                                           Instruction (20h)                       24-Bit Address
                DI
                                                                             23   22       2     1       0
              (IO0)
                                                                             *
               DO                                         High Impedance
              (IO1)
                         * = MSB
                                           Figure 31. Sector Erase Instruction




                                                            - 35 -
                                                                                                           W25Q16JV

     32KB Block Erase (52h)
The Block Erase instruction sets all memory within a specified block (32K-bytes) to the erased state of all
1s (FFh). A Write Enable instruction must be executed before the device will accept the Block Erase
Instruction (Status Register bit WEL must equal 1). The instruction is initiated by driving the /CS pin low
and shifting the instruction code “52h” followed a 24-bit block address (A23-A0). The Block Erase instruction
sequence is shown in Figure 32.

The /CS pin must be driven high after the eighth bit of the last byte has been latched. If this is not done the
Block Erase instruction will not be executed. After /CS is driven high, the self-timed Block Erase instruction
will commence for a time duration of tBE1 (See AC Characteristics). While the Block Erase cycle is in
progress, the Read Status Register instruction may still be accessed for checking the status of the BUSY
bit. The BUSY bit is a 1 during the Block Erase cycle and becomes a 0 when the cycle is finished and the
device is ready to accept other instructions again. After the Block Erase cycle has finished the Write Enable
Latch (WEL) bit in the Status Register is cleared to 0. The Block Erase instruction will not be executed if
the addressed page is protected by the Block Protect (CMP, SEC, TB, BP2, BP1, and BP0) bits or the
Individual Block/Sector Locks.


             /CS


                    Mode 3      0   1    2    3    4        5     6   7    8    9        29      30   31   Mode 3
            CLK     Mode 0                                                                                 Mode 0

                                        Instruction (52h)                       24-Bit Address
              DI
                                                                          23   22       2     1       0
            (IO0)
                                                                          *
             DO                                        High Impedance
            (IO1)
                      * = MSB
                                        Figure 32. 32KB Block Erase Instruction




                                                                      Publication Release Date: March 22, 2018, 2018
                                                         - 36 -                                           Revision G
                                                                                                           W25Q16JV

     64KB Block Erase (D8h)
The Block Erase instruction sets all memory within a specified block (64K-bytes) to the erased state of all
1s (FFh). A Write Enable instruction must be executed before the device will accept the Block Erase
Instruction (Status Register bit WEL must equal 1). The instruction is initiated by driving the /CS pin low
and shifting the instruction code “D8h” followed a 24-bit block address (A23-A0). The Block Erase
instruction sequence is shown in Figure 33.

The /CS pin must be driven high after the eighth bit of the last byte has been latched. If this is not done the
Block Erase instruction will not be executed. After /CS is driven high, the self-timed Block Erase instruction
will commence for a time duration of tBE (See AC Characteristics). While the Block Erase cycle is in
progress, the Read Status Register instruction may still be accessed for checking the status of the BUSY
bit. The BUSY bit is a 1 during the Block Erase cycle and becomes a 0 when the cycle is finished and the
device is ready to accept other instructions again. After the Block Erase cycle has finished the Write Enable
Latch (WEL) bit in the Status Register is cleared to 0. The Block Erase instruction will not be executed if
the addressed page is protected by the Block Protect (CMP, SEC, TB, BP2, BP1, and BP0) bits or the
Individual Block/Sector Locks.


             /CS


                    Mode 3       0   1    2    3    4      5     6    7    8    9        29      30   31   Mode 3
            CLK     Mode 0                                                                                 Mode 0

                                         Instruction (D8h)                      24-Bit Address
              DI
                                                                          23   22       2     1       0
            (IO0)
                                                                          *
             DO                                         High Impedance
            (IO1)
                       * = MSB
                                         Figure 33. 64KB Block Erase Instruction




                                                             - 37 -
                                                                                                   W25Q16JV

         Chip Erase (C7h / 60h)
The Chip Erase instruction sets all memory within the device to the erased state of all 1s (FFh). A Write
Enable instruction must be executed before the device will accept the Chip Erase Instruction (Status
Register bit WEL must equal 1). The instruction is initiated by driving the /CS pin low and shifting the
instruction code “C7h” or “60h”. The Chip Erase instruction sequence is shown in Figure 34.

The /CS pin must be driven high after the eighth bit has been latched. If this is not done the Chip Erase
instruction will not be executed. After /CS is driven high, the self-timed Chip Erase instruction will commence
for a time duration of tCE (See AC Characteristics). While the Chip Erase cycle is in progress, the Read
Status Register instruction may still be accessed to check the status of the BUSY bit. The BUSY bit is a 1
during the Chip Erase cycle and becomes a 0 when finished and the device is ready to accept other
instructions again. After the Chip Erase cycle has finished the Write Enable Latch (WEL) bit in the Status
Register is cleared to 0. The Chip Erase instruction will not be executed if any memory region is protected
by the Block Protect (CMP, SEC, TB, BP2, BP1, and BP0) bits or the Individual Block/Sector Locks.




                             /CS


                                     Mode 3      0    1      2    3    4     5    6   7   Mode 3
                             CLK     Mode 0                                               Mode 0

                                                          Instruction (C7h/60h)
                               DI
                             (IO0)


                              DO                            High Impedance
                             (IO1)




                                          Figure 34. Chip Erase Instruction




                                                                  Publication Release Date: March 22, 2018, 2018
                                                     - 38 -                                           Revision G
                                                                                        W25Q16JV

     Erase / Program Suspend (75h)
The Erase/Program Suspend instruction “75h”, allows the system to interrupt a Sector or Block Erase
operation or a Page Program operation and then read from or program/erase data to, any other sectors or
blocks. The Erase/Program Suspend instruction sequence is shown in Figure 35.

The Write Status Register instruction (01h) and Erase instructions (20h, 52h, D8h, C7h, 60h, 44h) are not
allowed during Erase Suspend. Erase Suspend is valid only during the Sector or Block erase operation. If
written during the Chip Erase operation, the Erase Suspend instruction is ignored. The Write Status
Register instruction (01h) and Program instructions (02h, 32h, 42h) are not allowed during Program
Suspend. Program Suspend is valid only during the Page Program or Quad Page Program operation.

The Erase/Program Suspend instruction “75h” will be accepted by the device only if the SUS bit in the
Status Register equals to 0 and the BUSY bit equals to 1 while a Sector or Block Erase or a Page Program
operation is on-going. If the SUS bit equals to 1 or the BUSY bit equals to 0, the Suspend instruction will
be ignored by the device. A maximum of time of “tSUS” (See AC Characteristics) is required to suspend the
erase or program operation. The BUSY bit in the Status Register will be cleared from 1 to 0 within “t SUS”
and the SUS bit in the Status Register will be set from 0 to 1 immediately after Erase/Program Suspend.
For a previously resumed Erase/Program operation, it is also required that the Suspend instruction “75h” is
not issued earlier than a minimum of time of “tSUS” following the preceding Resume instruction “7Ah”.

Unexpected power off during the Erase/Program suspend state will reset the device and release the
suspend state. SUS bit in the Status Register will also reset to 0. The data within the page, sector or block
that was being suspended may become corrupted. It is recommended for the user to implement system
design techniques against the accidental power interruption and preserve data integrity during
erase/program suspend state.




        /CS
                                                                           tSUS
                Mode 3    0   1    2    3    4        5   6   7                      Mode 3
        CLK     Mode 0                                                               Mode 0

                                  Instruction (75h)
          DI
        (IO0)


         DO                       High Impedance
        (IO1)

                                                                                    Accept instructions


                                   Figure 35. Erase/Program Suspend Instruction




                                                          - 39 -
                                                                                                    W25Q16JV

     Erase / Program Resume (7Ah)
The Erase/Program Resume instruction “7Ah” must be written to resume the Sector or Block Erase
operation or the Page Program operation after an Erase/Program Suspend. The Resume instruction “7Ah”
will be accepted by the device only if the SUS bit in the Status Register equals to 1 and the BUSY bit equals
to 0. After issued the SUS bit will be cleared from 1 to 0 immediately, the BUSY bit will be set from 0 to 1
within 200ns and the Sector or Block will complete the erase operation or the page will complete the
program operation. If the SUS bit equals to 0 or the BUSY bit equals to 1, the Resume instruction “7Ah” will
be ignored by the device. The Erase/Program Resume instruction sequence is shown in Figure 36.

Resume instruction is ignored if the previous Erase/Program Suspend operation was interrupted by
unexpected power off. It is also required that a subsequent Erase/Program Suspend instruction not to be
issued within a minimum of time of “tSUS” following a previous Resume instruction.


                     /CS


                            Mode 3      0    1    2    3       4     5   6   7           Mode 3
                    CLK     Mode 0                                                       Mode 0

                                                 Instruction (7Ah)
                      DI
                    (IO0)


                                                                                   Resume previously
                                                                                   suspended Program or
                                                                                   Erase

                                     Figure 36. Erase/Program Resume Instruction




                                                                   Publication Release Date: March 22, 2018, 2018
                                                      - 40 -                                           Revision G
                                                                                             W25Q16JV

     Power-down (B9h)
Although the standby current during normal operation is relatively low, standby current can be further
reduced with the Power-down instruction. The lower power consumption makes the Power-down instruction
especially useful for battery powered applications (See ICC1 and ICC2 in AC Characteristics). The
instruction is initiated by driving the /CS pin low and shifting the instruction code “B9h” as shown in Figure
37.
The /CS pin must be driven high after the eighth bit has been latched. If this is not done the Power-down
instruction will not be executed. After /CS is driven high, the power-down state will entered within the time
duration of tDP (See AC Characteristics). While in the power-down state only the Release Power-down /
Device ID (ABh) instruction, which restores the device to normal operation, will be recognized. All other
instructions are ignored. This includes the Read Status Register instruction, which is always available
during normal operation. Ignoring all but one instruction makes the Power Down state a useful condition for
securing maximum write protection. The device always powers-up in the normal operation with the standby
current of ICC1.

         /CS
                                                                                 tDP
                 Mode 3    0   1    2     3    4       5   6    7                           Mode 3
         CLK     Mode 0                                                                     Mode 0

                                   Instruction (B9h)
           DI
         (IO0)



                                                                        Stand-by current   Power-down current



                                        Figure 37. Deep Power-down Instruction




                                                           - 41 -
                                                                                                                                                        W25Q16JV

      Release Power-down / Device ID (ABh)
The Release from Power-down / Device ID instruction is a multi-purpose instruction. It can be used to
release the device from the power-down state, or obtain the devices electronic identification (ID) number.
To release the device from the power-down state, the instruction is issued by driving the /CS pin low, shifting
the instruction code “ABh” and driving /CS high as shown in Figure 38a. Release from power-down will take
the time duration of tRES1 (See AC Characteristics) before the device will resume normal operation and
other instructions are accepted. The /CS pin must remain high during the tRES1 time duration.
When used only to obtain the Device ID while not in the power-down state, the instruction is initiated by
driving the /CS pin low and shifting the instruction code “ABh” followed by 3-dummy bytes. The Device ID
bits are then shifted out on the falling edge of CLK with most significant bit (MSB) first. The Device ID value
for the W25Q16JV is listed in Manufacturer and Device Identification table. The Device ID can be read
continuously. The instruction is completed by driving /CS high.
When used to release the device from the power-down state and obtain the Device ID, the instruction is the
same as previously described, and shown in Figure 38b, except that after /CS is driven high it must remain
high for a time duration of tRES2 (See AC Characteristics). After this time duration the device will resume
normal operation and other instructions will be accepted. If the Release from Power-down / Device ID
instruction is issued while an Erase, Program or Write cycle is in process (when BUSY equals 1) the
instruction is ignored and will not have any effects on the current cycle.

           /CS
                                                                                                                           tRES1
                      Mode 3            0       1          2       3        4        5   6         7                                                 Mode 3
           CLK        Mode 0                                                                                                                         Mode 0

                                                       Instruction (ABh)
             DI
           (IO0)



                                                                                                                 Power-down current                  Stand-by current



                                                               Figure 38a. Release Power-down Instruction




    /CS


            Mode 3         0   1    2       3   4      5       6       7    8    9        29   30      31   32   33   34     35   36   37   38          Mode 3
    CLK     Mode 0                                                                                                                                      Mode 0

                                   Instruction (ABh)                            3 Dummy Bytes                                                          tRES2
     DI
                                                                           23   22        2    1       0
   (IO0)
                                                                           *                                               Device ID
    DO                                              High Impedance
                                                                                                            7    6    5     4     3    2    1    0
   (IO1)
                                                                                                            *
                 * = MSB                                                                                                                    Power-down current   Stand-by current


                                                    Figure 38c. Release Power-down / Device ID Instruction




                                                                                                           Publication Release Date: March 22, 2018, 2018
                                                                                         - 42 -                                                Revision G
                                                                                                                                         W25Q16JV

     Read Manufacturer / Device ID (90h)
The Read Manufacturer/Device ID instruction is an alternative to the Release from Power-down / Device
ID instruction that provides both the JEDEC assigned manufacturer ID and the specific device ID.

The Read Manufacturer/Device ID instruction is very similar to the Release from Power-down / Device ID
instruction. The instruction is initiated by driving the /CS pin low and shifting the instruction code “90h”
followed by a 24-bit address (A23-A0) of 000000h. After which, the Manufacturer ID for Winbond (EFh) and
the Device ID are shifted out on the falling edge of CLK with most significant bit (MSB) first as shown in
Figure 39. The Device ID values for the W25Q16JV are listed in Manufacturer and Device Identification
table. The instruction is completed by driving /CS high.


           /CS
                  Mode 3         0    1    2    3    4        5      6       7       8       9       10            28       29       30   31
           CLK    Mode 0

                                          Instruction (90h)                                      Address (000000h)
            DI
                                                                                 23      22      21                3        2        1    0
          (IO0)
                                                                                 *
           DO                                            High Impedance
          (IO1)

                      * = MSB
           /CS
                   31    32     33   34   35   36   37    38       39      40    41      42      43       44   45       46                Mode 3
           CLK                                                                                                                            Mode 0



            DI
                  0
          (IO0)


           DO
                                                                         7       6       5       4        3    2        1        0
          (IO1)
                                 Manufacturer ID (EFh)                   *                    Device ID


                                     Figure 39. Read Manufacturer / Device ID Instruction




                                                                  - 43 -
                                                                                                                                                                                      W25Q16JV

      Read Manufacturer / Device ID Dual I/O (92h)
The Read Manufacturer / Device ID Dual I/O instruction is an alternative to the Read Manufacturer / Device
ID instruction that provides both the JEDEC assigned manufacturer ID and the specific device ID at 2x
speed.

The Read Manufacturer / Device ID Dual I/O instruction is similar to the Fast Read Dual I/O instruction. The
instruction is initiated by driving the /CS pin low and shifting the instruction code “92h” followed by a 24-bit
address (A23-A0) of 000000h, but with the capability to input the Address bits two bits per clock. After
which, the Manufacturer ID for Winbond (EFh) and the Device ID are shifted out 2 bits per clock on the
falling edge of CLK with most significant bits (MSB) first as shown in Figure 40. The Device ID values for
the W25Q16JV are listed in Manufacturer and Device Identification table. The Manufacturer and Device
IDs can be read continuously, alternating from one to the other. The instruction is completed by driving /CS
high.



   /CS
           Mode 3           0       1        2       3       4       5       6       7           8           9       10       11        12       13       14   15   16     17   18    19   20   21     22   23
   CLK     Mode 0

                                            Instruction (92h)                                            A23-16                                  A15-8                   A7-0 (00h)             M7-0
     DI
                                                                                             6           4           2        0         6        4        2    0    6     4     2     0    6    4    2      0
   (IO0)


    DO                                      High Impedance
                                                                                             7           5           3        1         7        5        3    1    7     5     3     1    7    5    3      1
   (IO1)
                 * = MSB                                                                  *                                          *                              *                      *

   /CS
            23     24   25       26     27       28      29      30      31      32       33         34          35       36        37       38                Mode 3
   CLK                                                                                                                                                         Mode 0
                                IOs switch from
                                Input to Output
     DI
           0      6     4       2       0        6       4       2       0       6       4           2           0        6         4        2        0
   (IO0)


    DO
           1      7     5       3       1        7       5       3       1       7       5           3           1        7         5        3        1
   (IO1)
                  *     MFR ID                   * Device ID                     *       MFR ID
                                                                                         (repeat)
                                                                                                                          *        Device ID
                                                                                                                                    (repeat)



                                                 Figure 40. Read Manufacturer / Device ID Dual I/O Instruction


   Note:
   The “Continuous Read Mode” bits M(7-0) must be set to Fxh to be compatible with Fast Read Dual I/O instruction.




                                                                                                                                  Publication Release Date: March 22, 2018, 2018
                                                                                                     - 44 -                                                           Revision G
                                                                                                                                                                W25Q16JV

           Read Manufacturer / Device ID Quad I/O (94h)
The Read Manufacturer / Device ID Quad I/O instruction is an alternative to the Read Manufacturer / Device
ID instruction that provides both the JEDEC assigned manufacturer ID and the specific device ID at 4x
speed.

The Read Manufacturer / Device ID Quad I/O instruction is similar to the Fast Read Quad I/O instruction.
The instruction is initiated by driving the /CS pin low and shifting the instruction code “94h” followed by a
four clock dummy cycles and then a 24-bit address (A23-A0) of 000000h, but with the capability to input
the Address bits four bits per clock. After which, the Manufacturer ID for Winbond (EFh) and the Device ID
are shifted out four bits per clock on the falling edge of CLK with most significant bit (MSB) first as shown
in Figure 41. The Manufacturer and Device IDs can be read continuously, alternating from one to the other.
The instruction is completed by driving /CS high.



 /CS
        Mode 3             0        1        2       3       4        5       6   7       8       9     10      11   12      13   14     15   16   17   18   19   20   21    22    23
 CLK    Mode 0
                                                                                                                     A7-0                                                   IOs switch from
                                            Instruction (94h)                         A23-16            A15-8
                                                                                                                     (00h)
                                                                                                                                  M7-0        Dummy     Dummy
                                                                                                                                                                            Input to Output

  IO0                                                                                 4       0         4      0     4    0       4    0                          4    0     4    0

                                            High Impedance
  IO1                                                                                 5       1         5      1     5    1       5    1                          5    1     5    1

                                            High Impedance
  IO2                                                                                 6       2         6      2     6    2       6    2                          6    2     6    2

                                            High Impedance
  IO3                                                                                 7       3         7      3     7    3       7    3                          7    3     7    3

                                                                                                                                                                  MFR ID    Device ID



 /CS
           23    24    25       26      27        28     29        30             Mode 3
 CLK                                                                              Mode 0



  IO0      0    4     0         4       0        4       0        4       0


  IO1      1    5     1         5       1        5       1        5       1


  IO2      2    6     2         6       2        6       2        6       2


  IO3      3    7     3         7       3        7       3        7       3
                MFR ID         Device ID         MFR ID          Device ID
                (repeat)        (repeat)         (repeat)         (repeat)



                                                     Figure 41. Read Manufacturer / Device ID Quad I/O Instruction


   Note:
   The “Continuous Read Mode” bits M(7-0) must be set to Fxh to be compatible with Fast Read Quad I/O instruction.




                                                                                                      - 45 -
                                                                                                                                                          W25Q16JV

           Read Unique ID Number (4Bh)
The Read Unique ID Number instruction accesses a factory-set read-only 64-bit number that is unique to
each W25Q16JV device. The ID number can be used in conjunction with user software methods to help
prevent copying or cloning of a system. The Read Unique ID instruction is initiated by driving the /CS pin
low and shifting the instruction code “4Bh” followed by a four bytes of dummy clocks. After which, the 64-
bit ID is shifted out on the falling edge of CLK as shown in Figure 42.




   /CS
           Mode 3            0    1    2    3     4       5    6    7    8    9     10    11    12    13    14        15        16        17   18    19       20       21       22   23
   CLK     Mode 0

                                      Instruction (4Bh)                             Dummy Byte 1                                               Dummy Byte 2
     DI
   (IO0)


    DO                                                                            High Impedance
   (IO1)




   /CS




                                                                                                                                                    100

                                                                                                                                                          101

                                                                                                                                                                   102
            23       24   25     26   27   28    29   30      31   32   33   34    35    36    37    38    39     40        41        42                                             Mode 3
   CLK                                                                                                                                                                               Mode 0

                                 Dummy Byte 3                                Dummy Byte 4
     DI
   (IO0)


    DO                                          High Impedance
                                                                                                                 63        62        61                   2        1        0
   (IO1)
                 *   = MSB
                                                                                                                 * 64-bit Unique Serial Number


                                                      Figure 42. Read Unique ID Number Instruction




                                                                                               Publication Release Date: March 22, 2018, 2018
                                                                              - 46 -                                               Revision G
                                                                                                                                                                   W25Q16JV

        Read JEDEC ID (9Fh)
For compatibility reasons, the W25Q16JV provides several instructions to electronically determine the
identity of the device. The Read JEDEC ID instruction is compatible with the JEDEC standard for SPI
compatible serial memories that was adopted in 2003. The instruction is initiated by driving the /CS pin low
and shifting the instruction code “9Fh”. The JEDEC assigned Manufacturer ID byte for Winbond (EFh) and
two Device ID bytes, Memory Type (ID15-ID8) and Capacity (ID7-ID0) are then shifted out on the falling
edge of CLK with most significant bit (MSB) first as shown in Figure 43. For memory type and capacity
values refer to Manufacturer and Device Identification table.


                /CS
                        Mode 3           0       1        2       3       4       5       6       7       8       9       10       11       12       13       14   15
                CLK     Mode 0

                                                         Instruction (9Fh)
                  DI
                (IO0)
                                                                                                                   Manufacturer ID (EFh)
                 DO                                      High Impedance
                (IO1)
                              * = MSB
                /CS
                         15     16   17      18      19       20      21      22      23      24      25      26      27       28       29       30                Mode 3
                CLK                                                                                                                                                Mode 0



                  DI
                (IO0)
                                         Memory Type ID15-8                                                   Capacity ID7-0
                 DO
                               7     6       5       4        3       2       1       0       7       6       5       4        3        2        1        0
                (IO1)
                               *                                                              *

                                                     Figure 43. Read JEDEC ID Instruction




                                                                                  - 47 -
                                                                                                                                                                               W25Q16JV

            Read SFDP Register (5Ah)
The W25Q16JV features a 256-Byte Serial Flash Discoverable Parameter (SFDP) register that contains
information about device configurations, available instructions and other features. The SFDP parameters
are stored in one or more Parameter Identification (PID) tables. Currently only one PID table is specified,
but more may be added in the future. The Read SFDP Register instruction is compatible with the SFDP
standard initially established in 2010 for PC and other applications, as well as the JEDEC standard
JESD216-serials that is published in 2011. Most Winbond SpiFlash Memories shipped after June 2011
(date code 1124 and beyond) support the SFDP feature as specified in the applicable datasheet.

The Read SFDP instruction is initiated by driving the /CS pin low and shifting the instruction code “5Ah”
followed by a 24-bit address (A23-A0)(1) into the DI pin. Eight “dummy” clocks are also required before the
SFDP register contents are shifted out on the falling edge of the 40 th CLK with most significant bit (MSB)
first as shown in Figure 44. For SFDP register values and descriptions, please refer to the Winbond
Application Note for SFDP Definition Table.

Note 1: A23-A8 = 0; A7-A0 are used to define the starting byte address for the 256-Byte SFDP Register.




    /CS
             Mode 3             0       1       2       3       4        5       6       7       8       9       10            28       29       30       31
    CLK      Mode 0

                                            Instruction (5Ah)                                                    24-Bit Address
      DI
                                                                                             23      22      21                3        2        1        0
    (IO0)
                                                                                             *
     DO                                                             High Impedance
    (IO1)


    /CS
              31       32   33      34      35      36      37       38      39      40      41      42      43       44   45       46       47       48       49   50    51   52    53   54   55
    CLK

                                        Dummy Byte
      DI
              0        7    6       5       4       3       2        1       0
    (IO0)
                                                                                                         Data Out 1                                                     Data Out 2
     DO                         High Impedance
                                                                                     7       6       5       4        3    2        1        0        7        6    5     4    3     2    1    0    7
    (IO1)
                       = MSB
                   *                                                                 *                                                                *


                                                 Figure 44. Read SFDP Register Instruction Sequence Diagram




                                                                                                                      Publication Release Date: March 22, 2018, 2018
                                                                                                  - 48 -                                                  Revision G
                                                                                                             W25Q16JV

        Erase Security Registers (44h)
The W25Q16JV offers three 256-byte Security Registers which can be erased and programmed
individually. These registers may be used by the system manufacturers to store security and other important
information separately from the main memory array.
The Erase Security Register instruction is similar to the Sector Erase instruction. A Write Enable instruction
must be executed before the device will accept the Erase Security Register Instruction (Status Register bit
WEL must equal 1). The instruction is initiated by driving the /CS pin low and shifting the instruction code
“44h” followed by a 24-bit address (A23-A0) to erase one of the three security registers.

                 ADDRESS                        A23-16                 A15-12            A11-8                 A7-0
            Security Register #1                 00h                   0001              0000                Don’t Care
            Security Register #2                 00h                   0010              0000                Don’t Care
            Security Register #3                 00h                   0011              0000                Don’t Care


The Erase Security Register instruction sequence is shown in Figure 45. The /CS pin must be driven high
after the eighth bit of the last byte has been latched. If this is not done the instruction will not be executed.
After /CS is driven high, the self-timed Erase Security Register operation will commence for a time duration
of tSE (See AC Characteristics). While the Erase Security Register cycle is in progress, the Read Status
Register instruction may still be accessed for checking the status of the BUSY bit. The BUSY bit is a 1
during the erase cycle and becomes a 0 when the cycle is finished and the device is ready to accept other
instructions again. After the Erase Security Register cycle has finished the Write Enable Latch (WEL) bit in
the Status Register is cleared to 0. The Security Register Lock Bits (LB3-1) in the Status Register-2 can be
used to OTP protect the security registers. Once a lock bit is set to 1, the corresponding security register
will be permanently locked, Erase Security Register instruction to that register will be ignored (Refer to
section 7.1.8 for detail descriptions).


              /CS


                     Mode 3        0   1    2    3     4       5   6    7    8    9        29      30   31    Mode 3
             CLK     Mode 0                                                                                   Mode 0

                                           Instruction (44h)                      24-Bit Address
               DI
                                                                            23   22       2     1       0
             (IO0)
                                                                            *
              DO                                           High Impedance
             (IO1)
                       * = MSB

                                       Figure 45. Erase Security Registers Instruction




                                                             - 49 -
                                                                                                                                                                                              W25Q16JV

            Program Security Registers (42h)
The Program Security Register instruction is similar to the Page Program instruction. It allows from one
byte to 256 bytes of security register data to be programmed at previously erased (FFh) memory locations.
A Write Enable instruction must be executed before the device will accept the Program Security Register
Instruction (Status Register bit WEL= 1). The instruction is initiated by driving the /CS pin low then shifting
the instruction code “42h” followed by a 24-bit address (A23-A0) and at least one data byte, into the DI pin.
The /CS pin must be held low for the entire length of the instruction while data is being sent to the device.

                          ADDRESS                                                   A23-16                                A15-12                                  A11-8                                    A7-0
                 Security Register #1                                                   00h                               0001                                0000                                Byte Address
                 Security Register #2                                                   00h                               0010                                0000                                Byte Address
                 Security Register #3                                                   00h                               0011                                0000                                Byte Address

The Program Security Register instruction sequence is shown in Figure 46. The Security Register Lock Bits
(LB3-1) in the Status Register-2 can be used to OTP protect the security registers. Once a lock bit is set to
1, the corresponding security register will be permanently locked, Program Security Register instruction to
that register will be ignored (See 7.1.8, 8.2.25 for detail descriptions).


    /CS
             Mode 3           0       1        2       3       4        5       6       7       8       9       10            28       29       30   31       32       33       34       35       36       37       38       39
    CLK      Mode 0

                                              Instruction (42h)                                                 24-Bit Address                                                      Data Byte 1
      DI
                                                                                            23      22      21                3        2        1    0        7        6        5        4        3        2        1        0
    (IO0)
                                                                                            *                                                             *
                   * = MSB
    /CS
                                                                                                                                                          2072

                                                                                                                                                                   2073

                                                                                                                                                                            2074

                                                                                                                                                                                      2075

                                                                                                                                                                                              2076

                                                                                                                                                                                                       2077

                                                                                                                                                                                                                2078

                                                                                                                                                                                                                         2079
              39     40    41     42      43       44      45       46      47      48      49      50      51       52    53      54       55                                                                                    Mode 3
    CLK                                                                                                                                                                                                                           Mode 0

                                      Data Byte 2                                                       Data Byte 3                                                         Data Byte 256
      DI
             0      7     6       5       4        3       2        1       0       7       6       5       4        3    2        1        0             7        6        5        4        3        2        1        0
    (IO0)
                    *                                                               *                                                                     *

                                                                   Figure 46. Program Security Registers Instruction




                                                                                                                          Publication Release Date: March 22, 2018, 2018
                                                                                                        - 50 -                                                Revision G
                                                                                                                                                                             W25Q16JV

            Read Security Registers (48h)
The Read Security Register instruction is similar to the Fast Read instruction and allows one or more data
bytes to be sequentially read from one of the four security registers. The instruction is initiated by driving
the /CS pin low and then shifting the instruction code “48h” followed by a 24-bit address (A23-A0) and eight
“dummy” clocks into the DI pin. The code and address bits are latched on the rising edge of the CLK pin.
After the address is received, the data byte of the addressed memory location will be shifted out on the DO
pin at the falling edge of CLK with most significant bit (MSB) first. The byte address is automatically
incremented to the next byte address after each byte of data is shifted out. Once the byte address reaches
the last byte of the register (byte address FFh), it will reset to address 00h, the first byte of the register, and
continue to increment. The instruction is completed by driving /CS high. The Read Security Register
instruction sequence is shown in Figure 47. If a Read Security Register instruction is issued while an Erase,
Program or Write cycle is in process (BUSY=1) the instruction is ignored and will not have any effects on
the current cycle. The Read Security Register instruction allows clock rates from D.C. to a maximum of F R
(see AC Electrical Characteristics).

                        ADDRESS                                                 A23-16                           A15-12                              A11-8                          A7-0
                  Security Register #1                                           00h                             0001                                0000                     Byte Address
                  Security Register #2                                           00h                             0010                                0000                     Byte Address
                  Security Register #3                                           00h                             0011                                0000                     Byte Address




    /CS
             Mode 3           0       1        2       3       4        5       6       7       8       9       10            28       29       30       31
    CLK      Mode 0

                                              Instruction (48h)                                                 24-Bit Address
      DI
                                                                                            23      22      21                3        2        1        0
    (IO0)
                                                                                            *
     DO                                                            High Impedance
    (IO1)

                   * = MSB
    /CS
              31     32   33      34      35       36      37       38      39      40      41      42      43       44   45       46       47       48       49   50    51    52    53    54   55
    CLK

                                      Dummy Byte
      DI
              0     7     6       5       4        3       2        1       0
    (IO0)
                                                                                                        Data Out 1                                                     Data Out 2
     DO                       High Impedance
                                                                                    7       6       5       4        3    2        1        0        7        6    5     4     3     2     1    0    7
    (IO1)
                                                                                    *                                                                *

                                                               Figure 47. Read Security Registers Instruction




                                                                                                    - 51 -
                                                                                                               W25Q16JV

        Individual Block/Sector Lock (36h)
The Individual Block/Sector Lock provides an alternative way to protect the memory array from adverse
Erase/Program. In order to use the Individual Block/Sector Locks, the WPS bit in Status Register-3 must
be set to 1. If WPS=0, the write protection will be determined by the combination of CMP, SEC, TB, BP[2:0]
bits in the Status Registers. The Individual Block/Sector Lock bits are volatile bits. The default values after
device power up or after a Reset are 1, so the entire memory array is being protected.

To lock a specific block or sector as illustrated in Figure 4d, an Individual Block/Sector Lock command must
be issued by driving /CS low, shifting the instruction code “36h” into the Data Input (DI) pin on the rising
edge of CLK, followed by a 24-bit address and then driving /CS high. A Write Enable instruction must be
executed before the device will accept the Individual Block/Sector Lock Instruction (Status Register bit
WEL= 1).


              /CS


                      Mode 3       0     1    2    3    4        5    6   7    8    9        29      30   31   Mode 3
              CLK     Mode 0                                                                                   Mode 0

                                             Instruction (36h)                      24-Bit Address
                DI
                                                                              23   22        2    1       0
              (IO0)
                                                                              *
               DO                                           High Impedance
              (IO1)
                         * = MSB
                                       Figure 53. Individual Block/Sector Lock Instruction




                                                                          Publication Release Date: March 22, 2018, 2018
                                                             - 52 -                                           Revision G
                                                                                                                 W25Q16JV

        Individual Block/Sector Unlock (39h)
The Individual Block/Sector Lock provides an alternative way to protect the memory array from adverse
Erase/Program. In order to use the Individual Block/Sector Locks, the WPS bit in Status Register-3 must
be set to 1. If WPS=0, the write protection will be determined by the combination of CMP, SEC, TB, BP[2:0]
bits in the Status Registers. The Individual Block/Sector Lock bits are volatile bits. The default values after
device power up or after a Reset are 1, so the entire memory array is being protected.

To unlock a specific block or sector as illustrated in Figure 4d, an Individual Block/Sector Unlock command
must be issued by driving /CS low, shifting the instruction code “39h” into the Data Input (DI) pin on the
rising edge of CLK, followed by a 24-bit address and then driving /CS high. A Write Enable instruction must
be executed before the device will accept the Individual Block/Sector Unlock Instruction (Status Register
bit WEL= 1).


                /CS


                        Mode 3       0    1    2    3    4        5   6    7    8    9        29      30   31   Mode 3
                CLK     Mode 0                                                                                  Mode 0

                                              Instruction (39h)                      24-Bit Address
                  DI
                                                                               23   22       2     1       0
                (IO0)
                                                                               *
                 DO                                          High Impedance
                (IO1)
                           * = MSB

                                         Figure 54. Individual Block Unlock Instruction




                                                                  - 53 -
                                                                                                                                    W25Q16JV

            Read Block/Sector Lock (3Dh)
The Individual Block/Sector Lock provides an alternative way to protect the memory array from adverse
Erase/Program. In order to use the Individual Block/Sector Locks, the WPS bit in Status Register-3 must
be set to 1. If WPS=0, the write protection will be determined by the combination of CMP, SEC, TB, BP[2:0]
bits in the Status Registers. The Individual Block/Sector Lock bits are volatile bits. The default values after
device power up or after a Reset are 1, so the entire memory array is being protected.

To read out the lock bit value of a specific block or sector as illustrated in Figure 4d, a Read Block/Sector
Lock command must be issued by driving /CS low, shifting the instruction code “3Dh” into the Data Input
(DI) pin on the rising edge of CLK, followed by a 24-bit address. The Block/Sector Lock bit value will be
shifted out on the DO pin at the falling edge of CLK with most significant bit (MSB) first as shown in Figure
55. If the least significant bit (LSB) is 1, the corresponding block/sector is locked; if LSB=0, the
corresponding block/sector is unlocked, Erase/Program operation can be performed.




    /CS
             Mode 3        0   1    2    3    4      5    6   7     8    9      10       28      29   30   31   32   33   34   35   36     37   38   39   Mode 3
    CLK      Mode 0                                                                                                                                       Mode 0

                                   Instruction (3Dh)                            24-Bit Address
      DI
                                                                   23   22     21       3     2       1    0
    (IO0)
                                                                   *                                                      Lock Value Out
     DO                                           High Impedance
                                                                                                                X    X    X    X    X    X      X    0
    (IO1)

               *   = MSB                                                                                        *



                                                         Figure 55. Read Block Lock Instruction




                                                                                        Publication Release Date: March 22, 2018, 2018
                                                                             - 54 -                                         Revision G
                                                                                                                          W25Q16JV

        Global Block/Sector Lock (7Eh)
All Block/Sector Lock bits can be set to 1 by the Global Block/Sector Lock instruction. The command must
be issued by driving /CS low, shifting the instruction code “7Eh” into the Data Input (DI) pin on the rising
edge of CLK, and then driving /CS high. A Write Enable instruction must be executed before the device will
accept the Global Block/Sector Lock Instruction (Status Register bit WEL= 1).



                             /CS
                                     Mode 3      0    1        2       3       4       5       6       7       Mode 3
                             CLK     Mode 0                                                                    Mode 0

                                                              Instruction (7Eh)
                               DI
                             (IO0)


                              DO                              High Impedance
                             (IO1)




                                      Figure 56. Global Block Lock Instruction


        Global Block/Sector Unlock (98h)
All Block/Sector Lock bits can be set to 0 by the Global Block/Sector Unlock instruction. The command
must be issued by driving /CS low, shifting the instruction code “98h” into the Data Input (DI) pin on the
rising edge of CLK, and then driving /CS high. A Write Enable instruction must be executed before the
device will accept the Global Block/Sector Unlock Instruction (Status Register bit WEL= 1).



                             /CS
                                     Mode 3       0       1        2       3       4       5       6       7     Mode 3
                             CLK     Mode 0                                                                      Mode 0

                                                               Instruction (98h)
                               DI
                             (IO0)


                              DO                               High Impedance
                             (IO1)



                                     Figure 57. Global Block Unlock Instruction




                                                      - 55 -
                                                                                                           W25Q16JV

        Enable Reset (66h) and Reset Device (99h)
Because of the small package and the limitation on the number of pins, the W25Q16JV provide a software
Reset instruction instead of a dedicated RESET pin. Once the Reset instruction is accepted, any on-going
internal operations will be terminated and the device will return to its default power-on state and lose all the
current volatile settings, such as Volatile Status Register bits, Write Enable Latch (WEL) status,
Program/Erase Suspend status, Read parameter setting (P7-P0), and Wrap Bit setting (W6-W4).
“Enable Reset (66h)” and “Reset (99h)” instructions can be issued in SPI mode. To avoid accidental reset,
both instructions must be issued in sequence. Any other commands other than “Reset (99h)” after the
“Enable Reset (66h)” command will disable the “Reset Enable” state. A new sequence of “Enable Reset
(66h)” and “Reset (99h)” is needed to reset the device. Once the Reset command is accepted by the device,
the device will take approximately tRST=30us to reset. During this period, no command will be accepted.
Data corruption may happen if there is an on-going or suspended internal Erase or Program operation when
Reset command sequence is accepted by the device. It is recommended to check the BUSY bit and the
SUS bit in Status Register before issuing the Reset command sequence.


      /CS


              Mode 3   0   1    2    3    4        5   6   7        Mode 3     0   1    2    3    4        5   6   7   Mode 3
      CLK     Mode 0                                                Mode 0                                             Mode 0

                               Instruction (66h)                                       Instruction (99h)
        DI
      (IO0)


       DO                      High Impedance
      (IO1)


                                Figure 58. Enable Reset and Reset Instruction Sequence




                                                                       Publication Release Date: March 22, 2018, 2018
                                                           - 56 -                                          Revision G
                                                                                      W25Q16JV

10. ELECTRICAL CHARACTERISTICS

10.1 Absolute Maximum Ratings (1)
  PARAMETERS                         SYMBOL         CONDITIONS            RANGE                   UNIT
  Supply Voltage                     VCC                                  –0.6 to 4.6              V
  Voltage Applied to Any Pin         VIO            Relative to Ground    –0.6 to VCC+0.4          V
                                                    <20nS Transient
  Transient Voltage on any Pin       VIOT                                 –2.0V to VCC+2.0V        V
                                                    Relative to Ground
  Storage Temperature                TSTG                                 –65 to +150             °C
  Lead Temperature                   TLEAD                                See Note (2)            °C
  Electrostatic Discharge Voltage    VESD           Human Body Model(3)   –2000 to +2000           V

Notes:
1. This device has been designed and tested for the specified operation ranges. Proper operation outside
   of these levels is not guaranteed. Exposure to absolute maximum ratings may affect device reliability.
   Exposure beyond absolute maximum ratings may cause permanent damage.
2. Compliant with JEDEC Standard J-STD-20C for small body Sn-Pb or Pb-free (Green) assembly and the
   European directive on restrictions on hazardous substances (RoHS) 2002/95/EU.
3. JEDEC Std JESD22-A114A (C1=100pF, R1=1500 ohms, R2=500 ohms).


10.2 Operating Ranges

                                                                                     SPEC
  PARAMETER                SYMBOL      CONDITIONS                                                 UNIT
                                                                              MIN        MAX
                                       FR = 133MHz,          fR = 50MHz        3.0          3.6    V
  Supply Voltage(1)            VCC
                                       FR = 104MHz,          fR = 50MHz        2.7          3.0    V
  Ambient Temperature,                 Industrial                             –40        +85      °C
                               TA
  Operating                            Industrial Plus                        –40        +105     °C


Note:
1. VCC voltage during Read can operate across the min and max range but should not exceed ±10% of
   the programming (erase/write) voltage.




                                                    - 57 -
                                                                                                            W25Q16JV

10.3 Power-Up Power-Down Timing and Requirements
                                                                                          SPEC
  PARAMETER                                         SYMBOL                                                      UNIT
                                                                                MIN                  MAX
  VCC (min) to /CS Low                              tVSL(1)                      20                              µs
  Time Delay Before Write Instruction               tPUW(1)                       5                             ms
  Write Inhibit Threshold Voltage                   VWI   (1)
                                                                                1.0                   2.0        V

Note:
1. These parameters are characterized only.


                     VCC

                VCC (max)
                                      Program, Erase and Write Instructions are ignored
                                      /CS must track VCC

                VCC (min)
                                                                tVSL      Read Instructions   Device is fully
                            Reset                                             Allowed          Accessible
                            State
                  VWI
                                                                tPUW




                                                                                                        Time

                                    Figure 58a. Power-up Timing and Voltage Levels


                                                  /CS must track VCC
                                              during VCC Ramp Up/Down




                  VCC




                   /CS



                                                                                                     Time

                                    Figure 58b. Power-up, Power-Down Requirement




                                                                       Publication Release Date: March 22, 2018, 2018
                                                          - 58 -                                           Revision G
                                                                                                       W25Q16JV

10.4 DC Electrical Characteristics-
                                                                                             SPEC
   PARAMETER                   SYMBOL       CONDITIONS                                                                  UNIT
                                                                               MIN           TYP              MAX
   Input Capacitance(1)        CIN          VIN = 0V                                                           6         pF
   Output Capacitance(1)       Cout         VOUT = 0V                                                          8         pF
   Input Leakage               ILI                                                                             ±2       µA
   I/O Leakage                 ILO                                                                             ±2       µA
                                            /CS = VCC,
   Standby Current             ICC1                                                           10               50       µA
                                            VIN = GND or VCC

                                            /CS = VCC,
   Power-down Current          ICC2                                                            1               15       µA
                                            VIN = GND or VCC

   Current Read Data /                      C = 0.1 VCC / 0.9 VCC
                               ICC3                                                            2               10       mA
   Dual /Quad 1MHz(2)                       DO = Open
   Current Read Data /                      C = 0.1 VCC / 0.9 VCC
                               ICC3                                                            4               15       mA
   Dual /Quad 50MHz(2)                      DO = Open
   Current Read Data /                      C = 0.1 VCC / 0.9 VCC
                               ICC3                                                            6               18       mA
   Dual /Quad 80MHz(2)                      DO = Open
   Current Read Data /                      C = 0.1 VCC / 0.9 VCC
                               ICC3                                                            8               20       mA
   Dual /Quad 104MHz(2)                     DO = Open
   Current Write Status
                               ICC4         /CS = VCC                                         20               25       mA
   Register
   Current Page Program        ICC5         /CS = VCC                                         20               25       mA
   Current Sector/Block
                               ICC6         /CS = VCC                                         20               25       mA
   Erase
   Current Chip Erase          ICC7         /CS = VCC                                         20               25       mA
   Input Low Voltage           VIL                                             –0.5                         VCC x 0.3    V
   Input High Voltage          VIH                                         VCC x 0.7                    VCC + 0.4        V
   Output Low Voltage          VOL          IOL = 100 µA                                                       0.2       V
   Output High Voltage         VOH          IOH = –100 µA                  VCC – 0.2                                     V


Notes:
1. Tested on sample basis and specified through design and characterization data. TA = 25° C, VCC = 3.0V.
2. Checker Board Pattern.




                                                             - 59 -
                                                                                                         W25Q16JV

10.5 AC Measurement Conditions
                                                                                              SPEC
   PARAMETER                                                  SYMBOL                                               UNIT
                                                                                       MIN             MAX
   Load Capacitance                                                 CL                                  30            pF
   Input Rise and Fall Times                                      TR, TF                                 5            ns
   Input Pulse Voltages                                             VIN                0.1 VCC to 0.9 VCC             V
   Input Timing Reference Voltages                                   IN                0.3 VCC to 0.7 VCC             V
   Output Timing Reference Voltages                                OUT                 0.5 VCC to 0.5 VCC             V

Note:
1. Output Hi-Z is defined as the point where data out is no longer driven.


                                                                                 Input and Output
                              Input Levels                                   Timing Reference Levels

                                0.9 VCC
                                                                                          0.5 VCC
                                0.1 VCC

                                             Figure 59. AC Measurement I/O Waveform




                                                                             Publication Release Date: March 22, 2018, 2018
                                                               - 60 -                                            Revision G
                                                                                                W25Q16JV

10.6 AC Electrical Characteristics(6)
                                                                                               SPEC
  DESCRIPTION                                                SYMBOL        ALT                                        UNIT
                                                                                    MIN       TYP        MAX

  Clock frequency except for Read Data (03h)                    FR          fC1     D.C.                  133         MHz
  (3.0V-3.6V)
  Clock frequency except for Read Data (03h)                    FR          fC1     D.C.                  104         MHz
  ( 2.7V-3.0V)
  Clock frequency for Read Data instruction (03h)               fR                  D.C.                   50         MHz

  Clock High, Low Time                                         tCLH,                45%
                                                              tCLL(1)                                                  ns
  for all instructions except for Read Data (03h)                                    PC

  Clock High, Low Time                                        tCRLH,                45%
                                                                                                                       ns
  for Read Data (03h) instruction                            tCRLL(1)                PC

  Clock Rise Time peak to peak                               tCLCH(2)                0.1                              V/ns

  Clock Fall Time peak to peak                               tCHCL(2)                0.1                              V/ns

  /CS Active Setup Time relative to CLK                       tSLCH        tCSS       3                                ns

  /CS Not Active Hold Time relative to CLK                    tCHSL                   3                                ns

  Data In Setup Time                                          tDVCH        tDSU       1                                ns

  Data In Hold Time                                           tCHDX        tDH        2                                ns

  /CS Active Hold Time relative to CLK                        tCHSH                   3                                ns

  /CS Not Active Setup Time relative to CLK                   tSHCH                   3                                ns

  /CS Deselect Time (for Read)                                tSHSL1       tCSH      10                                ns

  /CS Deselect Time (for Erase or Program or Write)           tSHSL2       tCSH      50                                ns

  Output Disable Time                                        tSHQZ(2)      tDIS                            7           ns

  Clock Low to Output Valid
                                                              tCLQV         tV                             6           ns
  2.7V-3.6V

  Output Hold Time                                            tCLQX        tHO       1.5                               ns
                                                             Continued – next page AC Electrical Characteristics (cont’d)




                                                    - 61 -
                                                                                                           W25Q16JV




                                                                                                           SPEC
   DESCRIPTION                                                        SYMBOL         ALT                                           UNIT
                                                                                               MIN       TYP          MAX

   Write Protect Setup Time Before /CS Low                            tWHSL(3)                 20                                       ns

   Write Protect Hold Time After /CS High                             tSHWL(3)                 100                                      ns

   /CS High to Power-down Mode                                          tDP(2)                                          3               µs

   /CS High to Standby Mode without ID Read                           tRES1(2)                                          3               µs

   /CS High to Standby Mode with ID Read                              tRES2(2)                                         1.8              µs

   /CS High to next Instruction after Suspend                          tSUS(2)                                         20               µs

   /CS High to next Instruction after Reset                            tRST(2)                                         30               µs

   /RESET pin Low period to reset the device                          tRESET(2)                1(4)                                     µs

   Write Status Register Time                                            tW                               10           15               ms

   Page Program Time                                                     tPP                             0.4            3               ms

   Sector Erase Time (4KB)                                               tSE                              45           400              ms

   Block Erase Time (32KB)                                               tBE1                            120         1,600              ms

   Block Erase Time (64KB)                                               tBE2                            150         2,000              ms

   Chip Erase Time                                                       tCE                              5            25               s
Notes:
    1.   Clock high or Clock low must be more than or equal to 45%Pc. Pc=1/fC(MAX)
    2.   Value guaranteed by design and/or characterization, not 100% tested in production.
    3.   It’s possible to reset the device with shorter tRESET (as short as a few hundred ns), a 1us minimum is recommended to ensure
         reliable operation.
    4.   Tested on sample basis and specified through design and characterization data. T A = 25° C, VCC = 3.0V, 25% driver
         strength.
    5.   4-bytes address alignment for Quad Read, start address from [A1,A0]=(0,0).




                                                                        Publication Release Date: March 22, 2018, 2018
                                                             - 62 -                                         Revision G
                                                                                                       W25Q16JV

10.7 Serial Output Timing

      /CS

                                                                        tCLH
      CLK
                         tCLQV                 tCLQV                             tCLL                            tSHQZ
             tCLQX         tCLQX
      IO
                         MSB OUT                                                          LSB OUT
    output

10.8 Serial Input Timing

     /CS
                                                                                                      tSHSL
             tCHSL      tSLCH                                                     tCHSH               tSHCH

    CLK
                     tDVCH                        tCHDX             tCLCH                     tCHCL
      IO
                                 MSB IN                                        LSB IN
    input

10.9 /WP Timing
     /CS
             tWHSL                                                               tSHWL

     /WP


     CLK


      IO
    input
                                Write Status Register is allowed                   Write Status Register is not allowed




                                                           - 63 -
                                                                               W25Q16JV

11. PACKAGE SPECIFICATIONS
11.1 8-Pin SOIC 150-mil (Package Code SN) 20131227




                          Millimeters                                 Inches
      Symbol
                  Min        Mon           Max            Min           Mon           Max
        A         1.35        1.60         1.75           0.053         0.062         0.069
        A1        0.10        0.15         0.25           0.004         0.006         0.010
        b         0.33        0.41         0.51           0.013         0.016         0.020
        C         0.19        0.20         0.25          0.0075        0.0078        0.0098
        D         4.80        4.85         5.00           0.188         0.190         0.197
        E         3.80        3.90         4.00           0.150         0.153         0.157
        HE        5.80        6.00         6.20           0.228         0.236         0.244
        e                  1.27 BSC                                  0.050 BSC
        L         0.40        0.71         1.27          0.016          0.027         0.050
        Y          ---         ---         0.10            ---            ---         0.004
        θ          0°          ---         10°             0°             ---          10°




                                                  Publication Release Date: March 22, 2018, 2018
                                        - 64 -                                        Revision G
                                                                           W25Q16JV

11.3 8-Pin SOIC 208-mil (Package Code SS)




                                                                                 θ
                              Millimeters                    Inches
              Symbol
                       Min       Nom         Max     Min      Nom        Max
                A      1.75       1.95        2.16   0.069      0.077    0.085
                A1     0.05       0.15        0.25   0.002      0.006    0.010
                A2     1.70       1.80        1.91   0.067      0.071    0.075
                 b     0.35       0.42        0.48   0.014      0.017    0.019
                C      0.19       0.20        0.25   0.007      0.008    0.010
                D      5.18       5.28        5.38   0.204      0.208    0.212
                D1     5.13       5.23        5.33   0.202      0.206    0.210
                E      5.18       5.28        5.38   0.204      0.208    0.212
                E1     5.13       5.23        5.33   0.202      0.206    0.210
                 e             1.27 BSC                      0.050 BSC
                H      7.70       7.90        8.10   0.303      0.311    0.319
                 L     0.50       0.65        0.80   0.020      0.026    0.031
                 y      ---        ---        0.10     ---        ---    0.004
                 θ      0°         ---         8°      0°         ---      8°




                                            - 65 -
                                                                        W25Q16JV

11.4 8-Pad USON 2x3x0.6-mm^³ (Package Code UX)




                                            Publication Release Date: March 22, 2018, 2018
                                   - 66 -                                       Revision G
                                                                                              W25Q16JV

11.5 8-Pad WSON 6x5-mm (Package Code ZP)




                                         Millimeters                            Inches
                 Symbol
                                 Min        Nom          Max          Min        Nom          Max
                     A            0.70       0.75        0.80        0.028        0.030       0.031
                    A1            0.00       0.02        0.05        0.000        0.001       0.002
                     b            0.35       0.40        0.48        0.014        0.016       0.019
                     C             ---     0.20 REF       ---          ---     0.008 REF        ---
                     D            5.90       6.00        6.10        0.232        0.236       0.240
                    D2            3.35       3.40        3.45        0.132        0.134       0.136
                     E            4.90       5.00        5.10        0.193        0.197       0.201
                    E2            4.25       4.30        4.35        0.167        0.169       0.171
                     e                     1.27 BSC                            0.050 BSC
                     L            0.55       0.60        0.65        0.022        0.024       0.026

                     y            0.00        ---        0.075       0.000         ---        0.003




Note:
The metal pad area on the bottom center of the package is not connected to any internal electrical signals. It can be
left floating or connected to the device ground (GND pin). Avoid placement of exposed PCB vias under the pad.




                                                       - 67 -
                                                                                              W25Q16JV

11.6 8-Pad USON 4x3-mm (Package Code UU)




                                        Millimeters                              Inches
                Symbol
                                Min        Nom           Max          Min         Nom          Max
                   A            0.50        0.55         0.60         0.020       0.022        0.024
                   A1           0.00        0.02         0.05         0.000       0.001        0.002
                   A3            ---        0.15          ---          ---        0.006          ---
                   b            0.25        0.30         0.35         0.010       0.012        0.014
                   D            3.90        4.00         4.10         0.153       0.157        0.161
                   D1           0.70        0.80         0.90         0.027       0.031        0.035
                   D2           0.70        0.80         0.90         0.027       0.031        0.035
                   E            2.90        3.00         3.10         0.114       0.118        0.122
                   E1           0.10        0.20         0.30         0.004       0.008        0.012
                   e                      0.80 BSC                              0.031 BSC
                   L            0.55        0.60         0.65         0.022       0.024        0.026




Note:
The metal pad area on the bottom center of the package is not connected to any internal electrical signals. It can be
left floating or connected to the device ground (GND pin). Avoid placement of exposed PCB vias under the pad.




                                                                Publication Release Date: March 22, 2018, 2018
                                                      - 68 -                                        Revision G
                                                W25Q16JV

11.7 8-Pad XSON 4x4x0.45-mm (Package Code XG)




                                   - 69 -
                                                                                              W25Q16JV

11.8 8-Ball WLCSP (Package Code BY)




                                     Millimeters                                 Inches
           Symbol           Min         Nom            Max           Min          Nom           Max
               A           0.388         0.432         0.476        0.0153        0.0170       0.0187
              A1           0.108         0.127         0.146        0.0043        0.0050       0.0057
              D1             ---         0.529          ---           ---         0.0208         ---
              E1             ---         0.302          ---           ---         0.0119         ---
              eD             ---         0.400          ---           ---         0.0157         ---
              eE             ---         0.400          ---           ---         0.0157         ---
               b           0.200         0.250         0.300        0.0079        0.0098       0.0118
              aaa                        0.100                                    0.0040
              bbb                        0.100                                    0.0040
              ccc                        0.030                                    0.0012
              ddd                        0.150                                    0.0060



Notes:
         1. Dimension b is measured at the maximum solder bump diameter, parallel to primary datum C.
         2. Dimension D and E; please contact Winbond for details.




                                                               Publication Release Date: March 22, 2018, 2018
                                                   - 70 -                                          Revision G
                                                                                                           W25Q16JV

 12. ORDERING INFORMATION



                                                                              W(1) 25Q 16J V xx(2) I
      W          =      Winbond




      25Q        =      SpiFlash Serial Flash Memory with 4KB sectors, Dual/Quad I/O




      16J        =     16M-bit




      V          =     2.7V to 3.6V




      SN = 8-pin SOIC 150-mil                      SS = 8-pin SOIC 208-mil      UX = 8-pad USON 2x3-mm
      UU = 8-Pad USON 4x3mm                        XG = XSON 4x4x0.45-mm        ZP = WSON8 6x5-mm
      BY = 8-ball WLCSP




      I      =       Industrial (-40°C to +85°C)                      J   = Industrial Plus (-40°C to +105°C)

                               (3,4)


      Q(4)       = Green Package (Lead-free, RoHS Compliant, Halogen-free (TBBA), Antimony-Oxide-free Sb2O3)
                   with QE = 1 (fixed) in Status register-2. Backward compatible to FV family.
      M(5)       = Green Package (Lead-free, RoHS Compliant, Halogen-free (TBBA), Antimony-Oxide-free Sb2O3)
                   with QE = 0 (programmable) in Status register-2. New device ID is used to identify JV family



Notes:
 1.   The “W” prefix is not included on the part marking.
 2.   Only the 2nd letter is used for the part marking; WSON package type ZP are not used for the part marking.
 3.   Standard bulk shipments are in Tube (shape E). Please specify alternate packing method, such as Tape and
      Reel (shape T) or Tray (shape S), when placing orders.
 4.   /HOLD function is disabled to support Standard, Dual and Quad I/O without user setting.
 5.   For DTR, QPI supporting, please refer to W25Q16JV DTR datasheet.




                                                                 - 71 -
                                                                                    W25Q16JV

12.1 Valid Part Numbers and Top Side Marking
The following table provides the valid part numbers for the W25Q16JV SpiFlash Memory. Please contact
Winbond for specific availability by density and package type. Winbond SpiFlash memories use a 12-digit
Product Number for ordering. However, due to limited space, the Top Side Marking on all packages uses
an abbreviated 10-digit number.

W25Q16JV-IQ/JQ valid part numbers:

    W25Q16JV-IQ           DENSITY           PRODUCT NUMBER                   TOP SIDE MARKING
         SN
    SOIC-8 150-mil
                           16M-bit            W25Q16JVSNIQ                        25Q16JVNIQ
         SS
    SOIC-8 208-mil
                           16M-bit            W25Q16JVSSIQ                        25Q16JVSIQ
        UX(2)                                                                       1Pyww (3)
       USON-8              16M-bit            W25Q16JVUXIQ
   2x3x0.6(max.)mm³                                                                  0Qxxxx
         UU
   USON-8 4x3mm
                           16M-bit            W25Q16JVUUIQ                        Q16JVUUIQ
         XG
       XSON-8              16M-bit            W25Q16JVXGIQ                        Q16JVXGIQ
     4x4x0.45-mm
          ZP
   WSON-8 6x5-mm
                           16M-bit            W25Q16JVZPIQ                        25Q16JVIQ

         BY(3)                                                                        4Cyw
                           16M-bit            W25Q16JVBYIQ
     8-ball WLCSP                                                                     ●JIQ(4)




   W25Q16JV-JQ            DENSITY           PRODUCT NUMBER                   TOP SIDE MARKING
         SN
    SOIC-8 150-mil
                           16M-bit            W25Q16JVSNJQ                       25Q16JVNJQ
                                              W25Q16JVSSIQ
         SS
    SOIC-8 208-mil
                           16M-bit            W25Q16JVSSJQ                       25Q16JVSJQ

         UX(2)                                                                      1PywJ(3)
       USON-8              16M-bit            W25Q16JVUXJQ
   2x3x0.6(max.)mm³                                                                 0Qxxxx
         UU
   USON-8 4x3mm
                           16M-bit            W25Q16JVUUJQ                        Q16JVUUJQ
         XG
       XSON-8              16M-bit            W25Q16JVXGJQ                        Q16JVXGJQ
     4x4x0.45-mm
          ZP
   WSON-8 6x5-mm
                           16M-bit            W25Q16JVZPJQ                        25Q16JVJQ

         BY(3)                                                                        4Cyw
                           16M-bit            W25Q16JVBYJQ
     8-ball WLCSP                                                                    ●JJQ(4)



                                                        Publication Release Date: March 22, 2018, 2018
                                               - 72 -                                       Revision G
                                                                                               W25Q16JV


W25Q16JV-IM/JM(5) valid part numbers:

       W25Q16JV-IM            DENSITY            PRODUCT NUMBER                      TOP SIDE MARKING
            SN
       SOIC-8 150-mil
                               16M-bit              W25Q16JVSNIM                          25Q16JVNIM
            SS
       SOIC-8 208-mil
                               16M-bit              W25Q16JVSSIM                          25Q16JVSIM
           UX(2)                                                                               1Pyww(3)
         USON-8                16M-bit              W25Q16JVUXIM
                                                                                                0Mxxxx
   2x3x0.6(max.)mm³
         UU
   USON-8 4x3mm
                               16M-bit              W25Q16JVUUIM                          Q16JVUUIM
        ZP
   WSON-8 6x5-mm
                               16M-bit              W25Q16JVZPIM                              25Q16JVIM



   W25Q16JV-JM                DENSITY            PRODUCT NUMBER                      TOP SIDE MARKING
            SN
       SOIC-8 150-mil
                               16M-bit              W25Q16JVSNJM                         25Q16JVNJM
            SS
       SOIC-8 208-mil
                               16M-bit               W25Q16JVSSJM                        25Q16JVSJM
           UX(2)                                                                               1PywJ(3)
         USON-8                16M-bit
                                                    W25Q16JVUXJM                               0Mxxxx
   2x3x0.6(max.)mm³
         UU
   USON-8 4x3mm
                               16M-bit              W25Q16JVUUJM                          Q16JVUUJM
        ZP
   WSON-8 6x5-mm
                               16M-bit              W25Q16JVZPJM                          25Q16JVJM


Note:
  1.    These package types are special order, please contact Winbond for more information.
  2.    USON has special top side marking due to size limitation
        yww = date code (year, work week); xxxx = lot ID
  3.    WLCSP package type BY has special top marking due to size limitation.
  4.    “yw” is date code
  5.    For DTR, QPI supporting, please refer to W25Q16JV DTR datasheet.




                                                       - 73 -
                                                                                        W25Q16JV

13. REVISION HISTORY

   VERSION         DATE              PAGE                              DESCRIPTION
       A        2016/02/26                          New Create Datasheet
       B        2016/05/10                          Removed “preliminary”
                                       10           Updated Figure 4a. status Register-1
       C        2016/06/02
                                    5,70-72         Added WLCSP information
       D        2016/08/12            63            Added SOP 150-mil package
       E        2016/11/02                          Removed VSOP 208mil package
                                                    Updated /WP information
       F        2017/05/09            70            Updated WLCSP D & E dimension
                                     71-72          Updated W25Q16JV-IM order information
                                     11, 14         Update SR1/2 Figure
       G         2018/3/22             61           Updated tSLCH, tCHSL, tDVCH, tCHDX
                                    4, 71-73        Added industrial plus information




Trademarks
Winbond and SpiFlash are trademarks of Winbond Electronics Corporation.
All other marks are the property of their respective owner.


                                             Important Notice
Winbond products are not designed, intended, authorized or warranted for use as components in systems
or equipment intended for surgical implantation, atomic energy control instruments, airplane or spaceship
instruments, transportation instruments, traffic signal instruments, combustion control instruments, or for
other applications intended to support or sustain life. Furthermore, Winbond products are not intended for
applications wherein failure of Winbond products could result or lead to a situation wherein personal injury,
death or severe property or environmental damage could occur. Winbond customers using or selling these
products for use in such applications do so at their own risk and agree to fully indemnify Winbond for any
damages resulting from such improper use or sales.

Information in this document is provided solely in connection with Winbond products. Winbond
reserves the right to make changes, corrections, modifications or improvements to this document
and the products and services described herein at any time, without notice.




                                                           Publication Release Date: March 22, 2018, 2018
                                                  - 74 -                                       Revision G
```
