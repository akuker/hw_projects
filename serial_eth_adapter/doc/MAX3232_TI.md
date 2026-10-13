# MAX3232_TI

_Text extraction of `MAX3232_TI.pdf` (pdftotext -layout). Tables/pinouts/figures may lose fidelity; the PDF is authoritative._

```text
                                                                                                                                MAX3232
                                                                                            SLLS410O – JANUARY 2000 – REVISED JUNE 2021

             MAX3232 3-V to 5.5-V Multichannel RS-232 Line Driver and Receiver
                                With ±15-kV ESD Protection

1 Features                                                             3 Description
•   RS-232 Bus-terminal esd protection exceeds                         The MAX3232 device consists of two line drivers,
    ±15 kV using human-body model (HBM)                                two line receivers, and a dual charge-pump circuit
•   Meets or exceeds the requirements of TIA/                          with ±15-kV ESD protection terminal to terminal
    EIA-232-F and ITU V.28 standards                                   (serial-port connection terminals, including GND).
•   Operates with 3-V to 5.5-V VCC supply                              The device meets the requirements of TIA/EIA-232-
•   Operates up to 250 kbit/s                                          F and provides the electrical interface between
•   Two drivers and two receivers                                      an asynchronous communication controller and the
•   Low supply current: 300 μA Typical                                 serial-port connector. The charge pump and four small
•   External capacitors: 4 × 0.1 μF                                    external capacitors allow operation from a single 3-V
•   Accepts 5-V logic input with 3.3-V supply                          to 5.5-V supply. The devices operate at data signaling
•   Alternative high-speed terminal-compatible                         rates up to 250 kbit/s and a maximum of 30-V/μs
    devices (1 Mbit/s)                                                 driver output slew rate.
    – SN65C3232 (–40°C to 85°C)                                                             Device Information
    – SN75C3232 (0°C to 70°C)
                                                                             PART NUMBER      PACKAGE(1)            BODY SIZE
2 Applications                                                                                SOIC (D) (16)         9.90 mm × 3.91 mm

• Industrial PCs                                                                              SSOP (DB) (16)        6.20 mm × 5.30 mm
• Wired networking                                                     MAX3232                                      10.30 mm × 7.50
                                                                                              SOIC (DW) (16)
• Data center and enterprise networking                                                                             mm
• Battery-powered systems                                                                     TSSOP (PW) (16)       5.00 mm × 4.40 mm
• PDAs
                                                                       (1)    For all available packages, see the orderable addendum at
• Notebooks                                                                   the end of the data sheet.
• Laptops
• Palmtop PCs
• Hand-held equipment
spacer
spacer
spacer


                                 3.3 V, 5 V                       POWER




                                                     2                                2         DOUT
                                       DIN                       TX
                                                                                               RS232




                                                     2                                2        RIN
                                     ROUT                              RX
                                                                                               RS232


                                                      Simplified Schematic



     An IMPORTANT NOTICE at the end of this data sheet addresses availability, warranty, changes, use in safety-critical applications,
     intellectual property matters and other important disclaimers. PRODUCTION DATA.
MAX3232
SLLS410O – JANUARY 2000 – REVISED JUNE 2021                                                                                                                      www.ti.com


                                                                        Table of Contents
1 Features............................................................................1     8.2 Functional Block Diagram........................................... 9
2 Applications..................................................................... 1       8.3 Feature Description.....................................................9
3 Description.......................................................................1       8.4 Device Functional Modes..........................................10
4 Revision History.............................................................. 2        9 Application and Implementation.................................. 11
5 Pin Configuration and Functions...................................3                       9.1 Application Information..............................................11
6 Specifications.................................................................. 4        9.2 Standard Application................................................. 11
  6.1 Absolute Maximum Ratings........................................ 4                  10 Power Supply Recommendations..............................12
  6.2 ESD Ratings............................................................... 4        11 Layout........................................................................... 13
  6.3 Recommended Operating Conditions.........................4                            11.1 Layout Guidelines................................................... 13
  6.4 Thermal Information....................................................5              11.2 Layout Example...................................................... 13
  6.5 Electrical Characteristics — Device............................ 5                   12 Device and Documentation Support..........................14
  6.6 Electrical Characteristics — Driver............................. 5                    12.1 Receiving Notification of Documentation Updates..14
  6.7 Electrical Characteristics — Receiver.........................6                       12.2 Support Resources................................................. 14
  6.8 Switching Characteristics............................................6                12.3 Trademarks............................................................. 14
  6.9 Typical Characteristics................................................ 7             12.4 Electrostatic Discharge Caution..............................14
7 Parameter Measurement Information............................ 8                           12.5 Glossary..................................................................14
8 Detailed Description........................................................9           13 Mechanical, Packaging, and Orderable
  8.1 Overview..................................................................... 9       Information.................................................................... 14



4 Revision History
NOTE: Page numbers for previous revisions may differ from page numbers in the current version.
Changes from Revision N (June 2017) to Revision O (June 2021)                                               Page
• Added Applications: Industrial PCs, Wired networking, and Data center and enterprise computing..................1
• Changed the thermal parameter values for D, DB and PW packages in the Thermal Information table............5


Changes from Revision M (April 2017) to Revision N (June 2017)                                                                                Page
• Changed the Thermal Information table ............................................................................................................ 5

Changes from Revision L (March 2017) to Revision M (April 2017)                                                                     Page
• Changed From: "±" To: "to" in the VCC column of Table 9-1 ............................................................................ 12

Changes from Revision K (January 2015) to Revision L (March 2017)                                                          Page
• Changed pin 16 (VCC) in Typical Operating Circuit and Capacitor Values .......................................................11

Changes from Revision J (January 2014) to Revision K (January 2015)                                       Page
• Added Applications, Device Information table, Pin Functions table, ESD Ratings table, Thermal Information
  table, Typical Characteristics, Feature Description section, Device Functional Modes, Application and
  Implementation section, Power Supply Recommendations section, Layout section, Device and
  Documentation Support section, and Mechanical, Packaging, and Orderable Information section................... 1

Changes from Revision I (January 2004) to Revision J (January 2014)                                                                               Page
• Updated document to new TI data sheet format - no specification changes...................................................... 1
• Deleted Ordering Information table.....................................................................................................................1




2       Submit Document Feedback                                                                                            Copyright © 2021 Texas Instruments Incorporated

                                                                     Product Folder Links: MAX3232
                                                                                                                                  MAX3232
www.ti.com                                                                                        SLLS410O – JANUARY 2000 – REVISED JUNE 2021


5 Pin Configuration and Functions


                                                  C1+         1                      16         VCC

                                                   V+         2                      15         GND

                                                  C1±         3                      14         DOUT1

                                                  C2+         4                      13         RIN1

                                                  C2±         5                      12         ROUT1

                                                   V±         6                      11         DIN1

                                            DOUT2             7                      10         DIN2

                                                  RIN2        8                       9         ROUT2


                                                            Not to scale

                   Figure 5-1. D, DB, DW, or PW Package, 16-Pin SOIC, SSOP, or TSSOP, Top View

                                                           Table 5-1. Pin Functions
                 PIN
                                         TYPE                                              DESCRIPTION
 NAME                       NO.
 C1+                          1            —         Positive lead of C1 capacitor
 V+                           2            O         Positive charge pump output for storage capacitor only
 C1–                          3            —         Negative lead of C1 capacitor
 C2+                          4            —         Positive lead of C2 capacitor
 C2–                          5            —         Negative lead of C2 capacitor
 V–                           6            O         Negative charge pump output for storage capacitor only
 DOUT2                        7            O         RS232 line data output (to remote RS232 system)
 DOUT1                       14            O         RS232 line data output (to remote RS232 system)
 RIN2                         8             I        RS232 line data input (from remote RS232 system)
 RIN1                        13             I        RS232 line data input (from remote RS232 system)
 ROUT2                        9            O         Logic data output (to UART)
 ROUT1                       12            O         Logic data output (to UART)
 DIN2                        10             I        Logic data input (from UART)
 DIN1                        11             I        Logic data input (from UART)
 GND                         15            —         Ground
 VCC                         16            —         Supply Voltage, Connect to external 3 V to 5.5 V power supply




Copyright © 2021 Texas Instruments Incorporated                                                                Submit Document Feedback         3
                                                           Product Folder Links: MAX3232
MAX3232
SLLS410O – JANUARY 2000 – REVISED JUNE 2021                                                                                             www.ti.com


6 Specifications
6.1 Absolute Maximum Ratings
over operating free-air temperature range (unless otherwise noted)(1)
                                                                                                                MIN              MAX         UNIT
    VCC         Supply voltage range(2)                                                                         –0.3               6          V
    V+          Positive output supply voltage range(2)                                                         –0.3               7          V
    V–          Negative output supply voltage range(2)                                                           –7              0.3         V
    V+ – V–     Supply voltage difference(2)                                                                                      13          V
                                                                      Drivers                                   –0.3               6
    VI          Input voltage range                                                                                                           V
                                                                      Receivers                                 –25               25
                                                                      Drivers                                 –13.2              13.2
    VO          Output voltage range                                                                                                          V
                                                                      Receivers                                 –0.3     VCC + 0.3
    TJ          Operating virtual junction temperature                                                                           150          °C
    Tstg        Storage temperature range                                                                       –65              150          °C

(1)        Operation outside the Absolute Maximum Ratings may cause permanent device damage. Absolute Maximum Ratings do not imply
           functional operation of the device at these or any other conditions beyond those listed under Recommended Operating Conditions.
           If used outside the Recommended Operating Conditions but within the Absolute Maximum Ratings, the device may not be fully
           functional, and this may affect device reliability, functionality, performance, and shorten the device lifetime.
(2)        All voltages are with respect to network GND.


6.2 ESD Ratings
                                                                                                                        VALUE                UNIT
                                                Human body model (HBM), per ANSI/ESDA/JEDEC JS-001                       15000
                                                RIN , DOUT, and GND pins (1)
                                                Human body model (HBM), per ANSI/ESDA/JEDEC JS-001                       3000
    V(ESD)      Electrostatic discharge                                                                                                       V
                                                All other pins(1)
                                                Charged device model (CDM), per JEDEC specification JESD22-C101,         1000
                                                all pins(2)

(1)        JEDEC document JEP155 states that 500-V HBM allows safe manufacturing with a standard ESD control process.
(2)        JEDEC document JEP157 states that 250-V CDM allows safe manufacturing with a standard ESD control process.


6.3 Recommended Operating Conditions
(see Typical Operating Circuit and Capacitor Values)(1)
                                                                                                               MIN     NOM         MAX        UNIT
                                                                                      VCC = 3.3 V                 3       3.3       3.6
    VCC       Supply voltage                                                                                                                      V
                                                                                      VCC = 5 V                 4.5          5      5.5
                                                                                      VCC = 3.3 V                 2
    VIH       Driver high-level input voltage                            DIN                                                                      V
                                                                                      VCC = 5 V                 2.4
    VIL       Driver low-level input voltage                             DIN                                                        0.8           V
              Driver input voltage                                       DIN                                      0                 5.5
    VI                                                                                                                                            V
              Receiver input voltage                                     RIN                                   –25                      25
                                                                                      MAX3232C                    0                     70
    TA        Operating free-air temperature                                                                                                   °C
                                                                                      MAX3232I                 –40                      85

(1)        Test conditions are C1–C4 = 0.1 μF at VCC = 3.3 V ± 0.3 V; C1 = 0.047 μF, C2–C4 = 0.33 μF at VCC = 5 V ± 0.5 V.




4          Submit Document Feedback                                                                   Copyright © 2021 Texas Instruments Incorporated

                                                            Product Folder Links: MAX3232
                                                                                                                                      MAX3232
www.ti.com                                                                                       SLLS410O – JANUARY 2000 – REVISED JUNE 2021



6.4 Thermal Information
                                                                                             MAX3232
                    THERMAL METRIC(1)                              SOIC (D)       SSOP (DB)             SOIC (DW)       TSSOP (PW)        UNIT
                                                                                              16 PINS
 RθJA       Junction-to-ambient thermal resistance                   85.9            103.1                66.6             108.2          °C/W
 RθJC(top) Junction-to-case (top) thermal resistance                 43.1            49.2                 32.4              39.0          °C/W
 RθJB       Junction-to-board thermal resistance                     44.5            54.8                 31.9              54.4          °C/W
 ψJT        Junction-to-top characterization parameter               10.1             12                   8.4              3.3           °C/W
 ψJB        Junction-to-board characterization parameter             44.1            54.1                 31.5              53.8          °C/W
 RθJC(bot) Junction-to-case (bottom) thermal resistance              n/a              n/a                  n/a              n/a           °C/W

(1)     For more information about traditional and new thermal metrics, see the Semiconductor and IC Package Thermal Metrics application
        report.


6.5 Electrical Characteristics — Device
over recommended ranges of supply voltage and operating free-air temperature (unless otherwise noted)(2) (see Typical
Operating Circuit and Capacitor Values)
                      PARAMETER                                            TEST CONDITIONS                        MIN    TYP(1)    MAX    UNIT
 ICC       Supply current                                No load,                VCC = 3.3 V to 5 V                         0.3       1    mA

(1)     All typical values are at VCC = 3.3 V or VCC = 5 V, and TA = 25°C.
(2)     Test conditions are C1–C4 = 0.1 μF at VCC = 3.3 V ± 0.3 V; C1 = 0.047 μF, C2–C4 = 0.33 μF at VCC = 5 V ± 0.5 V.


6.6 Electrical Characteristics — Driver
over recommended ranges of supply voltage and operating free-air temperature (unless otherwise noted)(3) (see Typical
Operating Circuit and Capacitor Values)
                   PARAMETER                                        TEST CONDITIONS                              MIN    TYP(1)     MAX    UNIT
 VOH        High-level output voltage                DOUT at RL = 3 kΩ to GND,    DIN = GND                        5       5.4              V
 VOL        Low-level output voltage                 DOUT at RL = 3 kΩ to GND,    DIN = VCC                       –5     –5.4               V
 IIH        High-level input current                 VI = VCC                                                           ±0.01        ±1    μA
 IIL        Low-level input current                  VI at GND                                                          ±0.01        ±1    μA
                                                     VCC = 3.6 V                  VO = 0 V
 IOS (2)    Short-circuit output current                                                                                  ±35      ±60     mA
                                                     VCC = 5.5 V                  VO = 0 V
 rO         Output resistance                        VCC, V+, and V– = 0 V        VO = ±2 V                      300     10M                Ω

(1)     All typical values are at VCC = 3.3 V or VCC = 5 V, and TA = 25°C.
(2)     Short-circuit durations should be controlled to prevent exceeding the device absolute power dissipation ratings, and not more than one
        output should be shorted at a time.
(3)     Test conditions are C1–C4 = 0.1 μF at VCC = 3.3 V ± 0.3 V; C1 = 0.047 μF, C2–C4 = 0.33 μF at VCC = 5 V ± 0.5




Copyright © 2021 Texas Instruments Incorporated                                                                  Submit Document Feedback        5
                                                         Product Folder Links: MAX3232
MAX3232
SLLS410O – JANUARY 2000 – REVISED JUNE 2021                                                                                              www.ti.com


6.7 Electrical Characteristics — Receiver
over recommended ranges of supply voltage and operating free-air temperature (unless otherwise noted)(2) (see Typical
Operating Circuit and Capacitor Values)
                             PARAMETER                                    TEST CONDITIONS                 MIN           TYP(1)      MAX      UNIT
    VOH           High-level output voltage                         IOH = –1 mA                      VCC – 0.6      VCC – 0.1                  V
    VOL           Low-level output voltage                          IOL = 1.6 mA                                                      0.4      V
                                                                    VCC = 3.3 V                                            1.5        2.4
    VIT+          Positive-going input threshold voltage                                                                                       V
                                                                    VCC = 5 V                                              1.8        2.4
                                                                    VCC = 3.3 V                            0.6             1.2
    VIT–          Negative-going input threshold voltage                                                                                       V
                                                                    VCC = 5 V                              0.8             1.5
    Vhys          Input hysteresis (VIT+ – VIT–)                                                                           0.3                 V
    rI            Input resistance                                  VI = ±3 V to ±25 V                       3               5          7     kΩ

(1)          All typical values are at VCC = 3.3 V or VCC = 5 V, and TA = 25°C.
(2)          Test conditions are C1–C4 = 0.1 μF at VCC = 3.3 V ± 0.3 V; C1 = 0.047 μF, C2–C4 = 0.33 μF at VCC = 5 V ± 0.5 V.


6.8 Switching Characteristics
over recommended ranges of supply voltage and operating free-air temperature (unless otherwise noted)(3) (see Typical
Operating Circuit and Capacitor Values)
                        PARAMETER                                        TEST CONDITIONS                         MIN     TYP(1)      MAX      UNIT
                                                           RL = 3 kΩ,               CL = 1000 pF
                 Maximum data rate                                                                               150        250               kbit/s
                                                           One DOUT switching,      See Figure 7-1
                                                                                    CL = 150 to 2500 pF
    tsk(p)       Driver Pulse skew(2)                      RL = 3 kΩ to 7 kΩ,                                               300                ns
                                                                                    See Figure 7-2

                 Slew rate, transition region              RL = 3 kΩ to 7 kΩ,       CL = 150 to 1000 pF             6                   30
    SR(tr)                                                                                                                                    V/μs
                 (see Figure 7-1)                          VCC = 5 V                CL = 150 to 2500 pF             4                   30
                 Propagation delay time, low- to high-
    tPLH®)                                                                                                                  300
                 level output
                                                           CL = 150 pF
                 Propagation delay time, high- to low-                                                                                         ns
    tPHL®)                                                                                                                  300
                 level output
    tsk(p)       Receiver Pulse skew(3)                                                                                     300

(1)          All typical values are at VCC = 3.3 V or VCC = 5 V, and TA = 25°C.
(2)          Pulse skew is defined as |tPLH − tPHL| of each channel of the same device.
(3)          Test conditions are C1–C4 = 0.1 μF at VCC = 3.3 V ± 0.3 V; C1 = 0.047 μF, C2–C4 = 0.33 μF at VCC = 5 V ± 0.5 V.




6            Submit Document Feedback                                                                     Copyright © 2021 Texas Instruments Incorporated

                                                               Product Folder Links: MAX3232
                                                                                                                                    MAX3232
www.ti.com                                                                                       SLLS410O – JANUARY 2000 – REVISED JUNE 2021


6.9 Typical Characteristics
                    6                                                                   1
                                                            VOH
                    5                                                                   0

                                                                                       ±1
                    4
          VOH (V)




                                                                                       ±2




                                                                             VOL (V)
                    3
                                                                                       ±3
                    2
                                                                                       ±4

                    1                                                                  ±5
                                                                                                                                  VOL
                    0                                                                  ±6
                        0   5       10            15   20         25                        0    5       10         15       20         25
                                 Output Current (mA)              C001                                 Output Current (mA)              C001


             VCC = 3.3 V                                                           VCC = 3.3 V
   Figure 6-1. DOUT VOH vs Load Current, Both Drivers Loaded             Figure 6-2. DOUT VOL vs Load Current, Both Drivers Loaded




Copyright © 2021 Texas Instruments Incorporated                                                               Submit Document Feedback         7
                                                       Product Folder Links: MAX3232
MAX3232
SLLS410O – JANUARY 2000 – REVISED JUNE 2021                                                                                                       www.ti.com


7 Parameter Measurement Information
                                                                                                                                                      3V
                                                                                          Input               1.5 V                 1.5 V
                                                           RS-232
                                                           Output                                                                                     0V
      Generator
     (see Note B)          50 Ω
                                                       CL                                              tTHL                                       tTLH
                                         RL            (see Note A)
                                                                                                                                                      VOH
                                                                                                          3V                              3V
                                                                                        Output
                                                                                                              −3 V                      −3 V
                                                                                                                                                      VOL

                          TEST CIRCUIT                                           6V                           VOLTAGE WAVEFORMS
                                                            SR(tr) =
                                                                       t         or t
                                                                           THL          TLH
A.    CL includes probe and jig capacitance.
B.    The pulse generator has the following characteristics: PRR = 250 kbit/s, ZO = 50 Ω, 50% duty cycle, tr ≤ 10 ns, tf ≤ 10 ns.

                                                      Figure 7-1. Driver Slew Rate
                                                                                                                                                      3V
                                                           RS-232                          Input               1.5 V                1.5 V
      Generator                                            Output                                                                                     0V
     (see Note B)          50 Ω
                                                       CL                                          tPHL                                        tPLH
                                         RL            (see Note A)
                                                                                                                                                      VOH
                                                                                         Output                       50%                   50%
                                                                                                                                                      VOL
                           TEST CIRCUIT                                                                       VOLTAGE WAVEFORMS
A.    CL includes probe and jig capacitance.
B.    The pulse generator has the following characteristics: PRR = 250 kbit/s, ZO = 50 Ω, 50% duty cycle, tr ≤ 10 ns, tf ≤ 10 ns.

                                                    Figure 7-2. Driver Pulse Skew
                                                                                                                                                    3V
                                                                                        Input                                   1.5 V
                                                                                                          1.5 V
                                                        Output                                                                                      −3 V
       Generator
      (see Note B)           50 Ω                                                               tPHL                                    tPLH
                                                    CL
                                                    (see Note A)
                                                                                                                                                    VOH
                                                                                   Output                            50%                50%
                                                                                                                                                    VOL
                            TEST CIRCUIT                                                                 VOLTAGE WAVEFORMS
A.    CL includes probe and jig capacitance.
B.    The pulse generator has the following characteristics: ZO = 50 Ω, 50% duty cycle, tr ≤ 10 ns, tf ≤ 10 ns.

                                         Figure 7-3. Receiver Propagation Delay Times




8      Submit Document Feedback                                                                                 Copyright © 2021 Texas Instruments Incorporated

                                                        Product Folder Links: MAX3232
                                                                                                                       MAX3232
www.ti.com                                                                             SLLS410O – JANUARY 2000 – REVISED JUNE 2021


8 Detailed Description
8.1 Overview
The MAX3232 device consists of two line drivers, two line receivers, and a dual charge-pump circuit with ±15-kV
ESD protection terminal to terminal (serial-port connection terminals, including GND). The device meets the
requirements of TIA/EIA-232-F and provides the electrical interface between an asynchronous communication
controller and the serial-port connector. The charge pump and four small external capacitors allow operation
from a single 3-V to 5.5-V supply. The device operates at data signaling rates up to 250 kbit/s and a maximum of
30-V/μs driver output slew rate. Outputs are protected against shorts to ground.
8.2 Functional Block Diagram


                                      3.3 V, 5 V               POWER




                                                   2                               2      DOUT
                                             DIN              TX
                                                                                          RS232




                                                   2                               2      RIN
                                           ROUT                     RX
                                                                                         RS232

8.3 Feature Description
8.3.1 Power
The power block increases, inverts, and regulates voltage at V+ and V- pins using a charge pump that requires
four external capacitors.
8.3.2 RS232 Driver
Two drivers interface standard logic level to RS232 levels. Both DIN inputs must be valid high or low.
8.3.3 RS232 Receiver
Two receivers interface RS232 levels to standard logic levels. An open input will result in a high output on ROUT.
Each RIN input includes an internal standard RS232 load.




Copyright © 2021 Texas Instruments Incorporated                                                    Submit Document Feedback          9
                                                   Product Folder Links: MAX3232
MAX3232
SLLS410O – JANUARY 2000 – REVISED JUNE 2021                                                                         www.ti.com

8.4 Device Functional Modes
                                               Table 8-1. Each Driver(1)
                                              INPUT              OUTPUT
                                              DIN                DOUT
                                                      L                 H
                                                      H                  L

                                              (1)   H = high level, L = low level

                                                      Table 8-2. Each
                                                        Receiver(1)
                                              INPUT              OUTPUT
                                              RIN                ROUT
                                                      L                 H
                                                      H                  L
                                                    Open                H

                                              (1)   H = high level, L = low level,
                                                    Open = input disconnected
                                                    or connected driver off

8.4.1 VCC powered by 3 V to 5.5 V
The device will be in normal operation.
8.4.2 VCC unpowered, VCC = 0 V
When MAX3232 is unpowered, it can be safely connected to an active remote RS232 device.




10    Submit Document Feedback                                                       Copyright © 2021 Texas Instruments Incorporated

                                               Product Folder Links: MAX3232
                                                                                                                                              MAX3232
www.ti.com                                                                                                    SLLS410O – JANUARY 2000 – REVISED JUNE 2021


9 Application and Implementation
                                                                            Note
       Information in the following applications sections is not part of the TI component specification,
       and TI does not warrant its accuracy or completeness. TI’s customers are responsible for
       determining suitability of components for their purposes, as well as validating and testing their design
       implementation to confirm system functionality.

9.1 Application Information
For proper operation, add capacitors as shown in Typical Operating Circuit and Capacitor Values.
9.2 Standard Application
ROUT and DIN connect to UART or general purpose logic lines. RIN and DOUT lines connect to a RS232
connector or cable.
                                                                       3.3 V / 5 V



                                                                                     C BYPASS = 0.1 μF
                                                                          VCC 16




                                                             1
                                                                 C1+


                                             +               2                                           15
                                        C1                       V+                              GND
                                             −       †+
                                                   C3
                                                      −
                                                                                                         14
                                                             3                                                   DOUT1
                                                                 C1−


                                                                                                         13
                                                             4                                                   RIN1
                                                                 C2+
                                                         +
                                                    C2                                    5 kΩ
                                                         −
                                                             5 C2−

                                                                                                         12
                                                                                                                 ROUT1
                                                             6
                                                                 V−                                      11
                                                         −
                                                    C4                                                           DIN1
                                                         +
                                                             7                                           10
                                             DOUT2                                                               DIN2


                                                             8                                           9
                                                 RIN2                                                            ROUT2

                                                                       5 kΩ




      † C3 can be connected to VCC or GND.
A.    Resistor values shown are nominal.
B.    Nonpolarized ceramic capacitors are acceptable. If polarized tantalum or electrolytic capacitors are used, they should be connected as
      shown.

                                  Figure 9-1. Typical Operating Circuit and Capacitor Values




Copyright © 2021 Texas Instruments Incorporated                                                                           Submit Document Feedback      11
                                                             Product Folder Links: MAX3232
MAX3232
SLLS410O – JANUARY 2000 – REVISED JUNE 2021                                                                                                      www.ti.com

9.2.1 Design Requirements
•    Recommended VCC is 3.3 V or 5 V. 3 V to 5.5 V is also possible
•    Maximum recommended bit rate is 250 kbit/s.
                                                      Table 9-1. VCC vs Capacitor Values
                                                     VCC                    C1                      C2, C3, C4
                                     3.3 V ± 0.3 V                         0.1 µF                        0.1 µF
                                      5 V ± 0.5 V                         0.047 µF                   0.33 µF
                                     3 V to 5.5 V                          0.1 µF                    0.47 µF


9.2.2 Detailed Design Procedure
•    All DIN, FORCEOFF and FORCEON inputs must be connected to valid low or high logic levels.
•    Select capacitor values based on VCC level for best performance.
9.2.3 Application Curves

                                                      6
                                                      5
                                                      4
                                                      3
                                                      2
                                                      1
                                       Voltage (V)




                                                      0
                                                     ±1
                                                     ±2
                                                     ±3
                                                     ±4
                                                     ±5
                                                     ±6
                                                     ±7                                             DIN
                                                                                                    DOUT to RIN
                                                     ±8
                                                                                                    ROUT
                                                     ±9
                                                          0   1   2   3     4       5       6   7    8      9     10
                                                                                Time ( s)                         C001


                              VCC = 3.3 V

                       Figure 9-2. 250 kbit/s Driver to Receiver Loopback Timing Waveform


10 Power Supply Recommendations
VCC should be between 3 V and 5.5 V. Charge pump capacitors should be chosen using table in Typical
Operating Circuit and Capacitor Values.




12    Submit Document Feedback                                                                                    Copyright © 2021 Texas Instruments Incorporated

                                                              Product Folder Links: MAX3232
                                                                                                                        MAX3232
www.ti.com                                                                              SLLS410O – JANUARY 2000 – REVISED JUNE 2021


11 Layout
11.1 Layout Guidelines
Keep the external capacitor traces short. This is more important on C1 and C2 nodes that have the fastest rise
and fall times.
11.2 Layout Example

                                             Ground

                                                        1 C1+                 VCC 16              VCC
                                                   C3
                                                                                            0.1µF
                                              C1        2 V+                 GND 15            Ground


                                                        3 C1–            DOUT1 14

                                                        4 C2+                RIN1 13
                                           C2
                                                        5 C2–            ROUT1 12

                                Ground                  6 V–                 DIN1 11
                                           C4
                                                        7 DOUT2              DIN2 10

                                                        8 RIN2           ROUT2 9

                                                      Figure 11-1. Layout Diagram




Copyright © 2021 Texas Instruments Incorporated                                                     Submit Document Feedback      13
                                                        Product Folder Links: MAX3232
MAX3232
SLLS410O – JANUARY 2000 – REVISED JUNE 2021                                                                                    www.ti.com


12 Device and Documentation Support
12.1 Receiving Notification of Documentation Updates
To receive notification of documentation updates, navigate to the device product folder on ti.com. Click on
Subscribe to updates to register and receive a weekly digest of any product information that has changed. For
change details, review the revision history included in any revised document.
12.2 Support Resources
TI E2E™ support forums are an engineer's go-to source for fast, verified answers and design help — straight
from the experts. Search existing answers or ask your own question to get the quick design help you need.
Linked content is provided "AS IS" by the respective contributors. They do not constitute TI specifications and do
not necessarily reflect TI's views; see TI's Terms of Use.
12.3 Trademarks
TI E2E™ is a trademark of Texas Instruments.
All trademarks are the property of their respective owners.
12.4 Electrostatic Discharge Caution
                 This integrated circuit can be damaged by ESD. Texas Instruments recommends that all integrated circuits be handled
                 with appropriate precautions. Failure to observe proper handling and installation procedures can cause damage.
                 ESD damage can range from subtle performance degradation to complete device failure. Precision integrated circuits may
                 be more susceptible to damage because very small parametric changes could cause the device not to meet its published
                 specifications.


12.5 Glossary
 TI Glossary         This glossary lists and explains terms, acronyms, and definitions.

13 Mechanical, Packaging, and Orderable Information
The following pages include mechanical packaging and orderable information. This information is the most
current data available for the designated devices. This data is subject to change without notice and revision of
this document. For browser based versions of this data sheet, refer to the left hand navigation.




14    Submit Document Feedback                                                                  Copyright © 2021 Texas Instruments Incorporated

                                                    Product Folder Links: MAX3232
                                                                                                                                 PACKAGE OPTION ADDENDUM

  www.ti.com                                                                                                                                                   23-Dec-2025




PACKAGING INFORMATION

 Orderable part number   Status     Material type   Package | Pins    Package qty | Carrier   RoHS      Lead finish/       MSL rating/       Op temp (°C)   Part marking
                            (1)          (2)                                                   (3)      Ball material      Peak reflow                           (6)
                                                                                                             (4)                (5)

       MAX3232CD         Obsolete    Production      SOIC (D) | 16              -               -          Call TI            Call TI           0 to 70     MAX3232C
      MAX3232CDB         Obsolete    Production     SSOP (DB) | 16              -               -          Call TI            Call TI           0 to 70      MA3232C
     MAX3232CDBR          Active     Production     SSOP (DB) | 16     2000 | LARGE T&R        Yes        NIPDAU        Level-1-260C-UNLIM      0 to 70      MA3232C
    MAX3232CDBR.A         Active     Production     SSOP (DB) | 16     2000 | LARGE T&R        Yes        NIPDAU        Level-1-260C-UNLIM      0 to 70      MA3232C
      MAX3232CDR          Active     Production      SOIC (D) | 16     2500 | LARGE T&R        Yes        NIPDAU        Level-1-260C-UNLIM      0 to 70     MAX3232C
     MAX3232CDR.A         Active     Production      SOIC (D) | 16     2500 | LARGE T&R        Yes        NIPDAU        Level-1-260C-UNLIM      0 to 70     MAX3232C
    MAX3232CDR1G4         Active     Production      SOIC (D) | 16     2500 | LARGE T&R        Yes        NIPDAU        Level-1-260C-UNLIM     -40 to 85    MAX3232C
   MAX3232CDR1G4.A        Active     Production      SOIC (D) | 16     2500 | LARGE T&R        Yes        NIPDAU        Level-1-260C-UNLIM     -40 to 85    MAX3232C
      MAX3232CDW         Obsolete    Production     SOIC (DW) | 16              -               -          Call TI            Call TI           0 to 70     MAX3232C
     MAX3232CDWR         Obsolete    Production     SOIC (DW) | 16              -               -          Call TI            Call TI           0 to 70     MAX3232C
      MAX3232CPW         Obsolete    Production     TSSOP (PW) | 16             -               -          Call TI            Call TI           0 to 70      MA3232C
     MAX3232CPWR          Active     Production     TSSOP (PW) | 16    2000 | LARGE T&R        Yes      NIPDAU | SN     Level-1-260C-UNLIM      0 to 70      MA3232C
    MAX3232CPWR.A         Active     Production     TSSOP (PW) | 16    2000 | LARGE T&R        Yes        NIPDAU        Level-1-260C-UNLIM      0 to 70      MA3232C
    MAX3232CPWRE4         Active     Production     TSSOP (PW) | 16    2000 | LARGE T&R        Yes        NIPDAU        Level-1-260C-UNLIM      0 to 70      MA3232C
    MAX3232CPWRG4         Active     Production     TSSOP (PW) | 16    2000 | LARGE T&R        Yes        NIPDAU        Level-1-260C-UNLIM      0 to 70      MA3232C
   MAX3232CPWRG4.A        Active     Production     TSSOP (PW) | 16    2000 | LARGE T&R        Yes        NIPDAU        Level-1-260C-UNLIM      0 to 70      MA3232C
      MAX3232IDBR         Active     Production     SSOP (DB) | 16     2000 | LARGE T&R        Yes        NIPDAU        Level-1-260C-UNLIM     -40 to 85      MB3232I
     MAX3232IDBR.A        Active     Production     SSOP (DB) | 16     2000 | LARGE T&R        Yes        NIPDAU        Level-1-260C-UNLIM     -40 to 85      MB3232I
    MAX3232IDBRE4         Active     Production     SSOP (DB) | 16     2000 | LARGE T&R        Yes        NIPDAU        Level-1-260C-UNLIM     -40 to 85      MB3232I
     MAX3232IDRG4        Obsolete    Production      SOIC (D) | 16              -               -          Call TI            Call TI          -40 to 85     MAX3232I
      MAX3232IDW         Obsolete    Production     SOIC (DW) | 16              -               -          Call TI            Call TI          -40 to 85     MAX3232I
      MAX3232IDWR         Active     Production     SOIC (DW) | 16     2000 | LARGE T&R        Yes      NIPDAU | SN     Level-1-260C-UNLIM     -40 to 85     MAX3232I
    MAX3232IDWR.B         Active     Production     SOIC (DW) | 16     2000 | LARGE T&R        Yes        NIPDAU        Level-1-260C-UNLIM     -40 to 85     MAX3232I
    MAX3232IDWRG4        Obsolete    Production     SOIC (DW) | 16              -               -          Call TI            Call TI          -40 to 85     MAX3232I
      MAX3232IPWR         Active     Production     TSSOP (PW) | 16    2000 | LARGE T&R        Yes      NIPDAU | SN     Level-1-260C-UNLIM     -40 to 85      MB3232I
     MAX3232IPWR.A        Active     Production     TSSOP (PW) | 16    2000 | LARGE T&R        Yes        NIPDAU        Level-1-260C-UNLIM     -40 to 85      MB3232I
    MAX3232IPWRE4         Active     Production     TSSOP (PW) | 16    2000 | LARGE T&R        Yes        NIPDAU        Level-1-260C-UNLIM     -40 to 85      MB3232I
    MAX3232IPWRG4         Active     Production     TSSOP (PW) | 16    2000 | LARGE T&R        Yes        NIPDAU        Level-1-260C-UNLIM     -40 to 85      MB3232I
   MAX3232IPWRG4.A        Active     Production     TSSOP (PW) | 16    2000 | LARGE T&R        Yes        NIPDAU        Level-1-260C-UNLIM     -40 to 85      MB3232I


                                                                                      Addendum-Page 1
                                                                                                                                                                      PACKAGE OPTION ADDENDUM

       www.ti.com                                                                                                                                                                                                   23-Dec-2025




(1)
      Status: For more details on status, see our product life cycle.

(2)
   Material type: When designated, preproduction parts are prototypes/experimental devices, and are not yet approved or released for full production. Testing and final process, including without limitation quality assurance,
reliability performance testing, and/or process qualification, may not yet be complete, and this item is subject to further changes or possible discontinuation. If available for ordering, purchases will be subject to an additional
waiver at checkout, and are intended for early internal evaluation purposes only. These items are sold without warranties of any kind.

(3)
      RoHS values: Yes, No, RoHS Exempt. See the TI RoHS Statement for additional information and value definition.

(4)
   Lead finish/Ball material: Parts may have multiple material finish options. Finish options are separated by a vertical ruled line. Lead finish/Ball material values may wrap to two lines if the finish value exceeds the maximum
column width.

(5)
  MSL rating/Peak reflow: The moisture sensitivity level ratings and peak solder (reflow) temperatures. In the event that a part has multiple moisture sensitivity ratings, only the lowest level per JEDEC standards is shown.
Refer to the shipping label for the actual reflow temperature that will be used to mount the part to the printed circuit board.

(6)
      Part marking: There may be an additional marking, which relates to the logo, the lot trace code information, or the environmental category of the part.

Multiple part markings will be inside parentheses. Only one part marking contained in parentheses and separated by a "~" will appear on a part. If a line is indented then it is a continuation of the previous line and the two
combined represent the entire part marking for that device.

Important Information and Disclaimer:The information provided on this page represents TI's knowledge and belief as of the date that it is provided. TI bases its knowledge and belief on information provided by third parties, and
makes no representation or warranty as to the accuracy of such information. Efforts are underway to better integrate information from third parties. TI has taken and continues to take reasonable steps to provide representative
and accurate information but may not have conducted destructive testing or chemical analysis on incoming materials and chemicals. TI and TI suppliers consider certain information to be proprietary, and thus CAS numbers
and other limited information may not be available for release.

In no event shall TI's liability arising out of such information exceed the total purchase price of the TI part(s) at issue in this document sold by TI to Customer on an annual basis.

OTHER QUALIFIED VERSIONS OF MAX3232 :

• Enhanced Product : MAX3232-EP

NOTE: Qualified Version Definitions:

           • Enhanced Product - Supports Defense, Aerospace and Medical Applications




                                                                                                          Addendum-Page 2
                                                                               PACKAGE MATERIALS INFORMATION

www.ti.com                                                                                                                                        4-Oct-2026



TAPE AND REEL INFORMATION

       REEL DIMENSIONS                                                                      TAPE DIMENSIONS
                                                                                       K0       P1



                                                                                                                       B0 W
                                        Reel
                                      Diameter
                                                                                    Cavity            A0
                                                                A0   Dimension designed to accommodate the component width
                                                                B0   Dimension designed to accommodate the component length
                                                                K0   Dimension designed to accommodate the component thickness
                                                                W    Overall width of the carrier tape
                                                                P1   Pitch between successive cavity centers


                                       Reel Width (W1)
                              QUADRANT ASSIGNMENTS FOR PIN 1 ORIENTATION IN TAPE

                                                                                                      Sprocket Holes


                                                 Q1        Q2          Q1    Q2

                                                 Q3        Q4          Q3    Q4                  User Direction of Feed



                                                            Pocket Quadrants


*All dimensions are nominal
             Device           Package Package Pins              SPQ       Reel   Reel   A0                    B0        K0     P1     W     Pin1
                               Type Drawing                             Diameter Width (mm)                  (mm)      (mm)   (mm)   (mm) Quadrant
                                                                          (mm) W1 (mm)
     MAX3232CDBR               SSOP      DB           16        2000        330.0        16.4        8.35    6.6       2.4    12.0   16.0    Q1
      MAX3232CDR               SOIC       D           16        2500        330.0        16.4         6.5    10.3      2.1    8.0    16.0    Q1
    MAX3232CDR1G4              SOIC       D           16        2500        330.0        16.4         6.5    10.3      2.1    8.0    16.0    Q1
     MAX3232CPWR              TSSOP      PW           16        2000        330.0        12.4         6.9    5.6       1.6    8.0    12.0    Q1
     MAX3232CPWR              TSSOP      PW           16        2000        330.0        12.4         6.9    5.3       1.6    8.0    12.0    Q1
     MAX3232CPWR              TSSOP      PW           16        2000        330.0        12.4         6.9    5.6       1.6    8.0    12.0    Q1
   MAX3232CPWRG4              TSSOP      PW           16        2000        330.0        12.4         6.9    5.6       1.6    8.0    12.0    Q1
      MAX3232IDBR              SSOP      DB           16        2000        330.0        16.4        8.35    6.6       2.4    12.0   16.0    Q1
     MAX3232IDWR               SOIC      DW           16        2000        330.0        16.4        10.75   10.7      2.7    12.0   16.0    Q1
      MAX3232IPWR             TSSOP      PW           16        2000        330.0        12.4         6.9    5.6       1.6    8.0    12.0    Q1
      MAX3232IPWR             TSSOP      PW           16        2000        330.0        12.4         6.9    5.3       1.6    8.0    12.0    Q1
      MAX3232IPWR             TSSOP      PW           16        2000        330.0        12.4         6.9    5.6       1.6    8.0    12.0    Q1
    MAX3232IPWRG4             TSSOP      PW           16        2000        330.0        12.4         6.9    5.6       1.6    8.0    12.0    Q1
    MAX3232IPWRG4             TSSOP      PW           16        2000        330.0        12.4         6.9    5.3       1.6    8.0    12.0    Q1




                                                                      Pack Materials-Page 1
                                                                PACKAGE MATERIALS INFORMATION

www.ti.com                                                                                                              4-Oct-2026



 TAPE AND REEL BOX DIMENSIONS




                                                               Width (mm)
                                                                              H
                      W




                                                          L




*All dimensions are nominal
             Device           Package Type   Package Drawing   Pins         SPQ    Length (mm)   Width (mm)   Height (mm)
      MAX3232CDBR                SSOP              DB           16          2000      353.0        353.0         32.0
      MAX3232CDR                 SOIC              D            16          2500      340.5        336.1         32.0
    MAX3232CDR1G4                SOIC              D            16          2500      353.0        353.0         32.0
     MAX3232CPWR                TSSOP              PW           16          2000      356.0        356.0         35.0
     MAX3232CPWR                TSSOP              PW           16          2000      367.0        367.0         35.0
     MAX3232CPWR                TSSOP              PW           16          2000      353.0        353.0         32.0
    MAX3232CPWRG4               TSSOP              PW           16          2000      353.0        353.0         32.0
      MAX3232IDBR                SSOP              DB           16          2000      353.0        353.0         32.0
      MAX3232IDWR                SOIC             DW            16          2000      350.0        350.0         43.0
      MAX3232IPWR               TSSOP              PW           16          2000      356.0        356.0         35.0
      MAX3232IPWR               TSSOP              PW           16          2000      367.0        367.0         35.0
      MAX3232IPWR               TSSOP              PW           16          2000      353.0        353.0         32.0
    MAX3232IPWRG4               TSSOP              PW           16          2000      353.0        353.0         32.0
    MAX3232IPWRG4               TSSOP              PW           16          2000      367.0        367.0         35.0




                                                        Pack Materials-Page 2
                                                                                                              PACKAGE OUTLINE
DB0016A                                                        SCALE 1.500
                                                                                                             SSOP - 2 mm max height
                                                                                                                     SMALL OUTLINE PACKAGE




                                                                                                                             C
                                     8.2
                                         TYP
         A                           7.4
                                                                                                                   0.1 C                 SEATING
                                        PIN 1 INDEX AREA
                                                                                                                                         PLANE
                                                                                      14X 0.65
                                                                             16
               1



                                                                                       2X
       6.5
                                                                                      4.55
       5.9
      NOTE 3



               8
                                                                             9
                                                                                             0.38
                                                                                      16X
                                                                                             0.22
                                      5.6
                   B                                                                        0.1     C A B
                                      5.0
                                     NOTE 4




                                                                                    0.25
                                                                                    0.09



                                 SEE DETAIL A
                                                                                                                                    2 MAX
                                                                                         0.25
                                                                                  GAGE PLANE




                                                                                                            0.95                     0.05 MIN
                                                                                     0 -8                   0.55

                                                                                                                   DETAIL A
                                                                                                                      A 15




                                                                                                                    TYPICAL




                                                                                                                                 4220763/A 05/2022

NOTES:

1. All linear dimensions are in millimeters. Any dimensions in parenthesis are for reference only. Dimensioning and tolerancing
   per ASME Y14.5M.
2. This drawing is subject to change without notice.
3. This dimension does not include mold flash, protrusions, or gate burrs. Mold flash, protrusions, or gate burrs shall not
   exceed 0.15 mm per side.
4. Reference JEDEC registration MO-150.




                                                                             www.ti.com
                                                                                      EXAMPLE BOARD LAYOUT
DB0016A                                                                                        SSOP - 2 mm max height
                                                                                                          SMALL OUTLINE PACKAGE




                                       16X (1.85)                        SYMM

                                  1                                                                        (R0.05) TYP

                      16X (0.45)                                                                     16




                                                                                                          SYMM

                     14X (0.65)




                                  8                                                                  9



                                                                          (7)


                                                      LAND PATTERN EXAMPLE
                                                            EXPOSED METAL SHOWN
                                                                 SCALE: 10X




              SOLDER MASK                                                       METAL UNDER                SOLDER MASK
                                                    METAL
                  OPENING                                                       SOLDER MASK                OPENING


      EXPOSED METAL                                                                                              EXPOSED METAL

                                      0.05 MAX                                                0.05 MIN
                                      ALL AROUND                                              ALL AROUND

                           NON-SOLDER MASK                                                    SOLDER MASK
                               DEFINED                                                          DEFINED
                             (PREFERRED)
                                                       SOLDER MASK DETAILS
                                                                15.000




                                                                                                                 4220763/A 05/2022
NOTES: (continued)

5. Publication IPC-7351 may have alternate designs.
6. Solder mask tolerances between and around signal pads can vary based on board fabrication site.




                                                                         www.ti.com
                                                                               EXAMPLE STENCIL DESIGN
DB0016A                                                                                      SSOP - 2 mm max height
                                                                                                           SMALL OUTLINE PACKAGE




                                       16X (1.85)               SYMM
                                                                                                            (R0.05) TYP
                                  1
                      16X (0.45)                                                                      16




                                                                                                          SYMM


                     14X (0.65)




                                   8                                                                  9



                                                                  (7)



                                                     SOLDER PASTE EXAMPLE
                                                    BASED ON 0.125 mm THICK STENCIL
                                                              SCALE: 10X




                                                                                                                  4220763/A 05/2022
NOTES: (continued)

7. Laser cutting apertures with trapezoidal walls and rounded corners may offer better paste release. IPC-7525 may have alternate
   design recommendations.
8. Board assembly site may have different recommendations for stencil design.




                                                                 www.ti.com
                                                                  GENERIC PACKAGE VIEW
DW 16                                                                   SOIC - 2.65 mm max height
7.5 x 10.3, 1.27 mm pitch                                                 SMALL OUTLINE INTEGRATED CIRCUIT




               This image is a representation of the package family, actual package may vary.
                             Refer to the product data sheet for package details.




                                                                                                  4224780/A




                                                    www.ti.com
                                                                                                        PACKAGE OUTLINE
DW0016A                                                            SCALE 1.500
                                                                                                      SOIC - 2.65 mm max height
                                                                                                                                      SOIC



                                                                                                                            C

                                         10.63                                                             SEATING PLANE
                                               TYP
                                         9.97
                          PIN 1 ID                                                                                    0.1 C
          A
                          AREA
                                                                                        14X 1.27
                                                                                 16
                  1




        10.5                                                                             2X
        10.1                                                                            8.89
       NOTE 3




                  8
                                                                                 9
                                                                                          0.51
                                                                                      16X
                                                                                          0.31
                                           7.6
                      B                                                                 0.25   C A B                  2.65 MAX
                                           7.4
                                          NOTE 4




                                                                                        0.33
                                                                                             TYP
                                                                                        0.10




                                     SEE DETAIL A
                                                                                        0.25
                                                                                 GAGE PLANE


                                                                                                                                0.3
                                                                                      0 -8                                      0.1
                                                                                               1.27
                                                                                               0.40              DETAIL A
                                                                                                        (1.4)     TYPICAL


                                                                                                                       4220721/A 07/2016

NOTES:

1. All linear dimensions are in millimeters. Dimensions in parenthesis are for reference only. Dimensioning and tolerancing
   per ASME Y14.5M.
2. This drawing is subject to change without notice.
3. This dimension does not include mold flash, protrusions, or gate burrs. Mold flash, protrusions, or gate burrs shall not
   exceed 0.15 mm, per side.
4. This dimension does not include interlead flash. Interlead flash shall not exceed 0.25 mm, per side.
5. Reference JEDEC registration MS-013.




                                                                  www.ti.com
                                                                              EXAMPLE BOARD LAYOUT
DW0016A                                                                                 SOIC - 2.65 mm max height
                                                                                                                            SOIC




                       16X (2)                                                                     SEE
                                                             SYMM                                  DETAILS

                                 1                                                            16

                  16X (0.6)




                                                                                                  SYMM




                14X (1.27)



                                 8                                                            9

                  R0.05 TYP

                                                             (9.3)


                                                LAND PATTERN EXAMPLE
                                                            SCALE:7X




                                             SOLDER MASK               SOLDER MASK                       METAL
                         METAL               OPENING                       OPENING




                                     0.07 MAX                                                 0.07 MIN
                                     ALL AROUND                                               ALL AROUND


                              NON SOLDER MASK                                            SOLDER MASK
                                  DEFINED                                                  DEFINED


                                                     SOLDER MASK DETAILS

                                                                                                                 4220721/A 07/2016


NOTES: (continued)

6. Publication IPC-7351 may have alternate designs.
7. Solder mask tolerances between and around signal pads can vary based on board fabrication site.




                                                               www.ti.com
                                                                              EXAMPLE STENCIL DESIGN
DW0016A                                                                                  SOIC - 2.65 mm max height
                                                                                                                               SOIC




                        16X (2)                               SYMM


                                  1                                                             16

                   16X (0.6)




                                                                                                     SYMM




                14X (1.27)



                                  8                                                             9

                 R0.05 TYP
                                                              (9.3)




                                                 SOLDER PASTE EXAMPLE
                                               BASED ON 0.125 mm THICK STENCIL
                                                          SCALE:7X




                                                                                                                  4220721/A 07/2016

NOTES: (continued)

8. Laser cutting apertures with trapezoidal walls and rounded corners may offer better paste release. IPC-7525 may have alternate
   design recommendations.
9. Board assembly site may have different recommendations for stencil design.




                                                                 www.ti.com
                                                                                                        PACKAGE OUTLINE
PW0016A                                                        SCALE 2.500
                                                                                                 TSSOP - 1.2 mm max height
                                                                                                                      SMALL OUTLINE PACKAGE




                                                                                                                                     SEATING
                                                                                                                                     PLANE
                                       6.6                                                                             C
                                           TYP
          A                            6.2
                                                                                                                                       0.1 C
                                          PIN 1 INDEX AREA
                                                                                      14X 0.65
                                                                              16
                1




                                                                                      2X
        5.1                                                                           4.55
        4.9
       NOTE 3


                                                                                                        4X (0 -12 )

                8
                                                                              9
                                                                                           0.30
                                        4.5                                           16X                             1.2 MAX
                    B                                                                      0.17
                                        4.3
                                       NOTE 4                                             0.1   C A B




                                                          (0.15) TYP
                                     SEE DETAIL A

                                                                                    0.25
                                                                             GAGE PLANE
                                                                                                                                       0.15
                                                                                                                                       0.05



                                                                                                   0.75
                                                                                                   0.50
                                                                                      0 -8
                                                                                                                 DETAIL A
                                                                                                                        A 20




                                                                                                                      TYPICAL

                                                                                                                                4220204/B 12/2023

NOTES:

1. All linear dimensions are in millimeters. Any dimensions in parenthesis are for reference only. Dimensioning and tolerancing
   per ASME Y14.5M.
2. This drawing is subject to change without notice.
3. This dimension does not include mold flash, protrusions, or gate burrs. Mold flash, protrusions, or gate burrs shall not
   exceed 0.15 mm per side.
4. This dimension does not include interlead flash. Interlead flash shall not exceed 0.25 mm per side.
5. Reference JEDEC registration MO-153.




                                                                             www.ti.com
                                                                                     EXAMPLE BOARD LAYOUT
PW0016A                                                                                   TSSOP - 1.2 mm max height
                                                                                                          SMALL OUTLINE PACKAGE




                                            16X (1.5)                   SYMM
                                                                                                       (R0.05) TYP
                                       1
                           16X (0.45)                                                             16




                                                                                                       SYMM


                          14X (0.65)




                                        8                                                         9



                                                                        (5.8)


                                                        LAND PATTERN EXAMPLE
                                                          EXPOSED METAL SHOWN
                                                               SCALE: 10X




               SOLDER MASK                                                      METAL UNDER              SOLDER MASK
                                                  METAL                         SOLDER MASK              OPENING
                   OPENING


        EXPOSED METAL                                                                                          EXPOSED METAL

                                   0.05 MAX                                                     0.05 MIN
                                   ALL AROUND                                                   ALL AROUND

                            NON-SOLDER MASK                                                   SOLDER MASK
                                DEFINED                                                         DEFINED
                              (PREFERRED)                SOLDER MASK DETAILS
                                                               15.000




                                                                                                                     4220204/B 12/2023
NOTES: (continued)

6. Publication IPC-7351 may have alternate designs.
7. Solder mask tolerances between and around signal pads can vary based on board fabrication site.




                                                                        www.ti.com
                                                                               EXAMPLE STENCIL DESIGN
PW0016A                                                                                 TSSOP - 1.2 mm max height
                                                                                                           SMALL OUTLINE PACKAGE




                                            16X (1.5)           SYMM
                                                                                                      (R0.05) TYP
                                       1
                           16X (0.45)                                                           16




                                                                                                    SYMM


                          14X (0.65)




                                        8                                                       9



                                                                 (5.8)



                                                        SOLDER PASTE EXAMPLE
                                                    BASED ON 0.125 mm THICK STENCIL
                                                              SCALE: 10X




                                                                                                                    4220204/B 12/2023
NOTES: (continued)

8. Laser cutting apertures with trapezoidal walls and rounded corners may offer better paste release. IPC-7525 may have alternate
   design recommendations.
9. Board assembly site may have different recommendations for stencil design.




                                                                 www.ti.com
                                         IMPORTANT NOTICE AND DISCLAIMER
TI PROVIDES TECHNICAL AND RELIABILITY DATA (INCLUDING DATASHEETS), DESIGN RESOURCES (INCLUDING REFERENCE
DESIGNS), APPLICATION OR OTHER DESIGN ADVICE, WEB TOOLS, SAFETY INFORMATION, AND OTHER RESOURCES “AS IS”
AND WITH ALL FAULTS, AND DISCLAIMS ALL WARRANTIES, EXPRESS AND IMPLIED, INCLUDING WITHOUT LIMITATION ANY
IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR NON-INFRINGEMENT OF THIRD
PARTY INTELLECTUAL PROPERTY RIGHTS.
These resources are intended for skilled developers designing with TI products. You are solely responsible for (1) selecting the appropriate
TI products for your application, (2) designing, validating and testing your application, and (3) ensuring your application meets applicable
standards, and any other safety, security, regulatory or other requirements.
These resources are subject to change without notice. TI grants you permission to use these resources only for development of an
application that uses the TI products described in the resource. Other reproduction and display of these resources is prohibited. No license
is granted to any other TI intellectual property right or to any third party intellectual property right. TI disclaims responsibility for, and you fully
indemnify TI and its representatives against any claims, damages, costs, losses, and liabilities arising out of your use of these resources.
TI’s products are provided subject to TI’s Terms of Sale, TI’s General Quality Guidelines, or other applicable terms available either on
ti.com or provided in conjunction with such TI products. TI’s provision of these resources does not expand or otherwise alter TI’s applicable
warranties or warranty disclaimers for TI products. Unless TI explicitly designates a product as custom or customer-specified, TI products
are standard, catalog, general purpose devices.
TI objects to and rejects any additional or different terms you may propose.
IMPORTANT NOTICE

                                                Copyright © 2026, Texas Instruments Incorporated
                                                                Last updated 10/2025
```
