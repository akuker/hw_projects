# SN65HVD72_TI

_Text extraction of `SN65HVD72_TI.pdf` (pdftotext -layout). Tables/pinouts/figures may lose fidelity; the PDF is authoritative._

```text
                                Product           Order       Technical            Tools &            Support &
                                Folder            Now         Documents            Software           Community



                                                                                           SN65HVD72, SN65HVD75, SN65HVD78
                                                                                              SLLSE11H – MARCH 2012 – REVISED MARCH 2019


                        SN65HVD7x 3.3-V Supply RS-485 With IEC ESD protection
1 Features                                                             2 Applications
1•   Small-size VSSOP Packages Save Board Space,                       •     Factory Automation
     or SOIC for Drop-in Compatibility                                 •     Telecommunications Infrastructure
•    Bus I/O Protection                                                •     Motion Control
     – >±15 kV HBM Protection
     – >±12 kV IEC 61000-4-2 Contact Discharge                         3 Description
     – >±4 kV IEC 61000-4-4 Fast Transient Burst                       These devices have robust 3.3-V drivers and
                                                                       receivers in a small package for demanding industrial
•    Extended Industrial Temperature Range                             applications. The bus pins are robust to ESD events
     –40°C to 125°C                                                    with high levels of protection to Human-Body Model
•    Large Receiver Hysteresis (80 mV) for Noise                       and IEC Contact Discharge specifications.
     Rejection                                                         Each of these devices combines a differential driver
•    Low Unit-Loading Allows Over 200 Connected                        and a differential receiver which operate from a single
     Nodes                                                             3.3-V power supply. The driver differential outputs
•    Low Power Consumption                                             and the receiver differential inputs are connected
                                                                       internally to form a bus port suitable for half-duplex
     – Low Standby Supply Current: < 2 µA                              (two-wire bus) communication. These devices feature
     – ICC < 1 mA Quiescent During Operation                           a wide common-mode voltage range making the
•    5-V Tolerant Logic Inputs Compatible With                         devices suitable for multi-point applications over long
                                                                       cable runs. These devices are characterized from
     3.3-V or 5-V Controllers
                                                                       –40°C to 125°C.
•    Signaling Rate Options Optimized for:
     250 kbps, 20 Mbps, 50 Mbps                                                               Device Information(1)
•    Glitch Free Power-Up and Power-Down Bus                               PART NUMBER                PACKAGE             BODY SIZE (NOM)
     Inputs and Outputs                                                                           SOIC (8)               4.91 mm × 3.90 mm
                                                                          SN65HVD72,
                                                                          SN65HVD75,              VSSOP (8)
                                                                          SN65HVD78                                      3.00 mm × 3.00 mm
                                                                                                  VSON (8)
                                                                          (1) For all available packages, see the orderable addendum at
                                                                              the end of the data sheet.

                                                   Typical Application Diagram

      R         R                                                                                                           R         R
                           A                                                                                  A
     RE                                                                                                                               RE
                                RT                                                                     RT
                           B                                                                                  B
     DE                                                                                                                               DE
      D     D                                                                                                                   D     D
                                              A    B                               A   B




                                          R                                    R
                                                          D                                   D


                                          R RE DE D                            R RE DE D
                                                                                            Copyright © 2016, Texas Instruments Incorporated




1




       An IMPORTANT NOTICE at the end of this data sheet addresses availability, warranty, changes, use in safety-critical applications,
       intellectual property matters and other important disclaimers. UNLESS OTHERWISE NOTED, this document contains PRODUCTION
       DATA.
SN65HVD72, SN65HVD75, SN65HVD78
SLLSE11H – MARCH 2012 – REVISED MARCH 2019                                                                                                                              www.ti.com


                                                                          Table of Contents
    1   Features .................................................................. 1                 9.1    Overview ................................................................. 15
    2   Applications ........................................................... 1                    9.2    Functional Block Diagram ....................................... 15
    3   Description ............................................................. 1                   9.3    Feature Description................................................. 15
                                                                                                      9.4    Device Functional Modes........................................ 15
    4   Revision History..................................................... 2
    5   Device Comparison Table..................................... 4                         10 Application and Implementation........................ 17
                                                                                                      10.1 Application Information.......................................... 17
    6   Pin Configuration and Functions ......................... 4
                                                                                                      10.2 Typical Application ................................................ 18
    7   Specifications......................................................... 5
                                                                                               11 Power Supply Recommendations ..................... 24
         7.1  Absolute Maximum Ratings ...................................... 5
         7.2  ESD Ratings.............................................................. 5      12 Layout................................................................... 25
                                                                                                      12.1 Layout Guidelines ................................................. 25
         7.3  Recommended Operating Conditions....................... 5
                                                                                                      12.2 Layout Example .................................................... 25
         7.4  Thermal Information .................................................. 6
         7.5  Electrical Characteristics........................................... 6          13 Device and Documentation Support ................. 26
         7.6  Power Dissipation ..................................................... 7               13.1    Device Support...................................................... 26
         7.7  Switching Characteristics: 250 kbps Device                                              13.2    Documentation Support ........................................ 26
             (SN65HVD72) Bit Time ≥ 4 µs................................... 7                         13.3    Related Links ........................................................ 26
         7.8 Switching Characteristics: 20 Mbps Device                                                13.4    Community Resources.......................................... 26
             (SN65HVD75) Bit Time ≥50 ns .................................. 8                         13.5    Trademarks ........................................................... 26
         7.9 Switching Characteristics: 50 Mbps Device                                                13.6    Electrostatic Discharge Caution ............................ 26
             (SN65HVD78) Bit Time ≥20 ns .................................. 8                         13.7    Glossary ................................................................ 26
         7.10 Typical Characteristics ............................................ 9
                                                                                               14 Mechanical, Packaging, and Orderable
    8   Parameter Measurement Information ................ 11                                     Information ........................................................... 27
    9   Detailed Description ............................................ 15



4 Revision History
NOTE: Page numbers for previous revisions may differ from page numbers in the current version.

Changes from Revision G (Januarly 2019) to Revision H                                                                                                                            Page

•   Changed the Pin Configuration images.................................................................................................................................. 4
•   Changed Supply voltage, VCC MAX value From = 3.6 V To: 5 V in the Absolute Maximum Ratings table ........................... 5
•   Deleted "or R pin" for VCC in the Absolute Maximum Ratings ............................................................................................... 5
•   Added reliability note to VCC in the Recommended Operating Conditions table .................................................................... 5


Changes from Revision F (December 2016) to Revision G                                                                                                                            Page

•   Changed From: Supply voltage, VCC MAX value = 5.5 V To: Supply voltage, VCC or R pin MAX value = 3.6 V in the
    Absolute Maximum Ratings table ........................................................................................................................................... 5
•   Changed From: Input voltage at any logic pin To: Voltage at D, DE, or RE in the Absolute Maximum Ratings table .......... 5


Changes from Revision E (September 2016) to Revision F                                                                                                                           Page

•   Changed pin A From: 7 To: 6, and pin B From: 6 To: 7 in Figure 26 .................................................................................. 22


Changes from Revision D (July 2015) to Revision E                                                                                                                                Page

•   Added new Feature: Glitch Free Power-Up and Power-Down Bus Inputs and Outputs ....................................................... 1




2        Submit Documentation Feedback                                                                            Copyright © 2012–2019, Texas Instruments Incorporated

                                                  Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
                                                                                                                     SN65HVD72, SN65HVD75, SN65HVD78
www.ti.com                                                                                                                SLLSE11H – MARCH 2012 – REVISED MARCH 2019



Changes from Revision C (September 2013) to Revision D                                                                                                                          Page

•   Added Pin Configuration and Functions section, ESD Ratings table, Feature Description section, Device Functional
    Modes, Application and Implementation section, Power Supply Recommendations section, Layout section, Device
    and Documentation Support section, and Mechanical, Packaging, and Orderable Information section .............................. 1


Changes from Revision B (June 2012) to Revision C                                                                                                                               Page

•   Deleted Feature: > ±12kV IEC61000-4-2 Air-Gap Discharge ................................................................................................ 1
•   Added Footnote 2 to the Absolute Maximum Ratings table ................................................................................................... 5
•   Changed the Switching Characteristics conditions statement From: 250 kbps devices (SN65HVD70, 71, 72) bit time
    > 4 µs To: 250 kbps device (SN65HVD72) bit time ≥ 4 µs .................................................................................................... 7
•   Changed the Switching Characteristics conditions statement From: 250 kbps devices (SN65HVD73, 74, 75) bit time
    > 50 ns To: 250 kbps device (SN65HVD75) bit time ≥ 50 ns ................................................................................................ 8
•   Changed the Switching Characteristics conditions statement From: 250 kbps devices (SN65HVD76, 77, 78)bit time
    > 20 ns To: 250 kbps device (SN65HVD78) bit time ≥ 20 ns ............................................................................................... 8
•   Added note : RL = 54 Ω to Figure 6, Figure 7, and Figure 8 .................................................................................................. 9
•   Added the DGK package to the SN65HVD72, 75, 78 Logic Diagram ................................................................................. 15
•   Replaced the LOW-POWER STANDBY MODE section ...................................................................................................... 19
•   Added text to the Transient Protection section..................................................................................................................... 20


Changes from Revision A (May 2012) to Revision B                                                                                                                                Page

•   Added the SON-8 package and Nodes column to Device Comparison Table,...................................................................... 4
•   Changed the Voltage range at A or B Inputs MIN value From: –8 V To: –13 V in the Absolute Maximum Ratings table .... 5
•   Added footnote for free-air temperature to the Recommended Operating Conditions table.................................................. 5
•   Changed the Bus input current (disabled driver) TYP values for HVD78 VI = 12 V From: 150 To: 240 and VI = –7 V
    From: –120 To: –180 .............................................................................................................................................................. 7
•   Changed, Thermal Information............................................................................................................................................... 7
•   Changed, Thermal Characteristics ......................................................................................................................................... 7
•   Added TYP values to the Switching Characteristics table...................................................................................................... 8
•   Added TYP values to the Switching Characteristics table...................................................................................................... 8
•   Changed the SN65HVD72, 75, 78 Logic Diagram ............................................................................................................... 15
•   Added section: LOW-POWER STANDBY MODE ................................................................................................................ 19


Changes from Original (March 2012) to Revision A                                                                                                                                Page

•   Added VALUEs to the Thermal Characteristics table in the DEVICE INFORMATION section. ........................................... 7
•   Changed the Switching Characteristics condition statement From: 15 kbps devices (SN65HVD73, 74, 75) bit time >
    65 ns To: 20 Mbps devices (SN65HVD73, 74, 75) bit time > 50 ns ...................................................................................... 8
•   Changed the Switching Characteristics condition statement From: 50 kbps devices (SN65HVD76, 77, 78) bit time >
    20 ns To: 50 Mbps devices (SN65HVD76, 77, 78) bit time > 20 ns ...................................................................................... 8
•   Added Figure 4 to Typical Characteristics. ............................................................................................................................ 9
•   Added Figure 5 to Typical Characteristics. ............................................................................................................................ 9
•   Added Figure 6 to Typical Characteristics. ............................................................................................................................ 9
•   Added Figure 7 to Typical Characteristics. ............................................................................................................................ 9
•   Added Figure 8 to Typical Characteristics. ............................................................................................................................ 9
•   Added Figure 9 to Typical Characteristics. ............................................................................................................................ 9
•   Added Application Information section to data sheet. .......................................................................................................... 17


Copyright © 2012–2019, Texas Instruments Incorporated                                                                            Submit Documentation Feedback                        3
                                                 Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
SN65HVD72, SN65HVD75, SN65HVD78
SLLSE11H – MARCH 2012 – REVISED MARCH 2019                                                                                                        www.ti.com


5 Device Comparison Table

            PART NUMBER                                   SIGNALING RATE                        NODES                   DUPLEX              ENABLES
                SN65HVD72                                     Up to 250 kbps
                                                                                                 213
                SN65HVD75                                     Up to 20 Mbps                                                  Half               DE, RE
                SN65HVD78                                     Up to 50 Mbps                         96



6 Pin Configuration and Functions

                              D Package
                              8-Pin SOIC                                                                           DGK Package
                               Top View                                                                            8-Pin VSSOP
                                                                                                                     Top View


            R           1                     8           VCC
                                                                                                     R         1                    8       VCC
           RE           2                     7           B
                                                                                                    RE         2                    7       B
           DE           3                     6           A
                                                                                                    DE         3                    6       A
            D           4                     5           GND
                                                                                                     D         4                    5       GND


                      No t to scale
                                                                                                             No t to scale


                                                                              DRB Package
                                                                               8-Pin VSON
                                                                                Top View




                                                               R          1              8      VCC

                                                              RE          2              7      B

                                                              DE          3              6      A

                                                               D          4              5      GND




                                                                   No t to scale


                                                                         Pin Functions
           PIN
                                            TYPE                                                         DESCRIPTION
NAME            NUMBER
A                 6                        Bus I/O                 Driver output or receiver input (complementary to B)
B                 7                        Bus I/O                 Driver output or receiver input (complementary to A)
D                 4                      Digital input             Driver data input
DE                3                      Digital input             Active-high driver enable
GND               5                   Reference potential          Local device ground
R                 1                      Digital output            Receive data output
RE                2                      Digital input             Active-low receiver enable
VCC               8                         Supply                 3-V to 3.6-V supply




4      Submit Documentation Feedback                                                                     Copyright © 2012–2019, Texas Instruments Incorporated

                                            Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
                                                                                                 SN65HVD72, SN65HVD75, SN65HVD78
www.ti.com                                                                                         SLLSE11H – MARCH 2012 – REVISED MARCH 2019


7 Specifications
7.1 Absolute Maximum Ratings
over recommended operating range (unless otherwise specified) (1)
                                                                                                      MIN                    MAX               UNIT
Supply voltage, VCC                                                                                   –0.5                    5
Voltage at A or B inputs                                                                              –13                    16.5
                                                                                                                                                V
Voltage at D, DE, or RE                                                                               –0.3                   5.7
Voltage input, transient pulse, A and B, through 100 Ω                                               –100                    100
Receiver output current                                                                               –24                    24                mA
Junction temperature, TJ                                                                                                     170                °C
Continuous total power dissipation                                                                    See Power Dissipation
Storage temperature, Tstg                                                                             –65                    150                °C

(1)     Stresses beyond those listed under Absolute Maximum Ratings may cause permanent damage to the device. These are stress ratings
        only and functional operation of the device at these or any other conditions beyond those indicated under Recommended Operating
        Conditions is not implied. Exposure to absolute-maximum-rated conditions for extended periods may affect device reliability.

7.2 ESD Ratings
                                                                                                                               VALUE           UNIT
                                                                                                                (1)
                                       Human body model (HBM), per ANSI/ESDA/JEDEC JS-001, all pins                               ±8000
                                       Charged device model (CDM), per JEDEC specification JESD22-C101 or
                                                                                                                                  ±1500
                                       ANSI/ESDA/JEDEC JS-002, all pins (2)
                                       JEDEC Standard 22, Test Method A115 (Machine Model), all pins                               ±300
                Electrostatic
V(ESD)                                                                                              (3)                                         V
                discharge              IEC 61000-4-2 ESD (Air-Gap Discharge), bus pins and GND                                 ±12000
                                       IEC 61000-4-2 ESD (Contact Discharge), bus pins and GND                                 ±12000
                                       IEC 61000-4-4 EFT (Fast transient or burst) bus pins and GND                               ±4000
                                       IEC 60749-26 ESD (Human Body Model), bus pins and GND                                   ±15000

(1)     JEDEC document JEP155 states that 500-V HBM allows safe manufacturing with a standard ESD control process.
(2)     JEDEC document JEP157 states that 250-V CDM allows safe manufacturing with a standard ESD control process.
(3)     By inference from contact discharge results, see Application and Implementation.

7.3 Recommended Operating Conditions
                                                                                                      MIN             NOM            MAX       UNIT
VCC (1)           Supply voltage                                                                            3          3.3            3.6       V
VI                Input voltage at any bus terminal (separately or common mode) (2)                        –7                             12    V
VIH               High-level input voltage (driver, driver enable, and receiver enable inputs)              2                         VCC       V
VIL               Low-level input voltage (driver, driver enable, and receiver enable inputs)               0                         0.8       V
VID               Differential input voltage                                                              –12                             12    V
IO                Output current, driver                                                                  –60                             60    mA
IO                Output current, receiver                                                                 –8                             8     mA
RL                Differential load resistance                                                             54          60                       Ω
CL                Differential load capacitance                                                                        50                       pF
                                               SN65HVD72                                                                              250      kbps
1/tUI             Signaling rate               SN65HVD75                                                                                  20   Mbps
                                               SN65HVD78                                                                                  50   Mbps
      (3)
TA                Operating free-air temperature (See Thermal Information)                                –40                         125       °C
TJ                Junction temperature                                                                    –40                         150       °C

(1)     Exposure to conditions beyond the recommended operation maximum for extended periods may affect device reliability.
(2)     The algebraic convention, in which the least positive (most negative) limit is designated as minimum, is used in this data sheet.
(3)     Operation is specified for internal (junction) temperatures up to 150°C. Self-heating due to internal power dissipation should be
        considered for each application. Maximum junction temperature is internally limited by the thermal shutdown (TSD) circuit which disables
        the driver outputs when the junction temperature reaches 170°C.


Copyright © 2012–2019, Texas Instruments Incorporated                                                      Submit Documentation Feedback              5
                                             Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
SN65HVD72, SN65HVD75, SN65HVD78
SLLSE11H – MARCH 2012 – REVISED MARCH 2019                                                                                               www.ti.com


7.4 Thermal Information
                                                                                    SN65HVD72, SN65HVD75, SN65HVD78
                           THERMAL METRIC (1)                                    D (SOIC)       DGK (VSSOP)         DRB (VSON)             UNIT
                                                                                                    8 PINS
RθJA           Junction-to-ambient thermal resistance                              110.7             168.7                40               °C/W
RθJC(top)      Junction-to-case (top) thermal resistance                            54.7             62.2                49.6              °C/W
RθJC(bot)      Junction-to-case (bottom) thermal resistance                          —                —                   3.9              °C/W
RθJB           Junction-to-board thermal resistance                                 51.3             89.5                15.5              °C/W
ψJT            Junction-to-top characterization parameter                            9.2              7.4                 0.6              °C/W
ψJB            Junction-to-board characterization parameter                         50.7             87.9                15.7              °C/W

(1)    For more information about traditional and new thermal metrics, see the Semiconductor and IC Package Thermal Metrics application
       report.

7.5 Electrical Characteristics
over recommended operating range (unless otherwise specified)
              PARAMETER                                   TEST CONDITIONS                           MIN           TYP           MAX        UNIT
                                            RL = 60 Ω, 375 Ω on each output to   See
                                                                                                     1.5             2
                                            –7 V to 12 V                         Figure 10
               Driver differential output
|VOD|                                     RL = 54 Ω (RS-485)                                         1.5             2                       V
               voltage magnitude
                                          RL = 100 Ω (RS-422), TJ ≥ 0°C
                                                                                                       2           2.5
                                          VCC ≥ 3.2 V
               Change in magnitude of
Δ|VOD|         driver differential output RL = 54 Ω, CL = 50 pF                                      –50             0             50       mV
               voltage
               Steady-state common-                                              See
VOC(SS)                                     Center of two 27-Ω load resistors    Figure 11             1        VCC/2               3        V
               mode output voltage
               Change in differential
ΔVOC           driver output common-        Center of two 27-Ω load resistors                        –50             0             50       mV
               mode voltage
               Peak-to-peak driver
VOC(PP)        common-mode output           Center of two 27-Ω load resistors                                     200                       mV
               voltage
               Differential output
COD                                                                                                                 15                      pF
               capacitance
               Positive-going receiver
VIT+           differential input voltage                                                        See (1)          –70             –20       mV
               threshold
               Negative-going receiver
VIT–           differential input voltage                                                          –200          –150          See (1)      mV
               threshold
               Receiver differential
VHYS           input voltage threshold                                                                50            80                      mV
               hysteresis (VIT+ – VIT–)
               Receiver high-level
VOH                                         IOH = –8 mA                                              2.4     VCC – 0.3                       V
               output voltage
               Receiver low-level
VOL                                         IOL = 8 mA                                                             0.2            0.4        V
               output voltage
               Driver input, driver
II             enable, and receiver                                                                   –2                            2       µA
               enable input current
               Receiver output high-
IOZ                                         VO = 0 V or VCC, RE at VCC                                –1                            1       µA
               impedance current
               Driver short-circuit
IOS                                                                                                –160                           160       mA
               output current




(1)    Under any specific conditions, VIT+ is assured to be at least VHYS higher than VIT–.
6         Submit Documentation Feedback                                                       Copyright © 2012–2019, Texas Instruments Incorporated

                                            Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
                                                                                                SN65HVD72, SN65HVD75, SN65HVD78
www.ti.com                                                                                         SLLSE11H – MARCH 2012 – REVISED MARCH 2019


Electrical Characteristics (continued)
over recommended operating range (unless otherwise specified)
              PARAMETER                                    TEST CONDITIONS                           MIN         TYP        MAX       UNIT
                                                                   SN65HVD72      VI = 12 V                       75         150
                                           VCC = 3 to 3.6 V or     SN65HVD75      VI = –7 V          –100        –40
               Bus input current
II                                         VCC = 0 V                                                                                   µA
               (disabled driver)                                                  VI = 12 V                      240         333
                                           DE at 0 V
                                                                   SN65HVD78
                                                                                  VI = –7 V          –267       –180
                                           Driver and receiver     DE = VCC, RE = GND
                                                                                                                 750         950
                                           enabled                 No load
                                           Driver enabled,         DE = VCC, RE = VCC
                                                                                                                 300         500
               Supply current              receiver disabled       No load
ICC                                                                                                                                    µA
               (quiescent)                 Driver disabled,        DE = GND, RE = GND
                                                                                                                 600         800
                                           receiver enabled        No load
                                           Driver and receiver     DE = GND, D = open
                                                                                                                  0.1            2
                                           disabled                RE = VCC, No load
               Supply current
                                           See Typical Characteristics
               (dynamic)
               Thermal shutdown
TTSD                                                                                                             170                   °C
               junction temperature


7.6 Power Dissipation
                                   PARAMETER                                                 TEST CONDITIONS            VALUE         UNIT
                                                                                                       SN65HVD72          120
                                                                                  RL = 300 Ω
                                                        Unterminated              CL = 50 pF           SN65HVD75          160          mW
             Power Dissipation                                                    (driver)
             driver and receiver enabled,                                                              SN65HVD78          200
             VCC = 3.6 V, TJ = 150°C                                                                   SN65HVD72          155
             50% duty cycle square-wave signal at                                 RL = 100 Ω
PD           signaling rate:                      RS-422 load                     CL = 50 pF           SN65HVD75          195          mW
             •   SN65HVD72 at 250 kbps                                            (driver)
                                                                                                       SN65HVD78          230
             •   SN65HVD75 at 20 Mbps                                                                  SN65HVD72          190
             •   SN65HVD78 at 50 Mbps                                             RL = 54 Ω
                                                  RS-485 load                     CL = 50 pF           SN65HVD75          230          mW
                                                                                  (driver)
                                                                                                       SN65HVD78          260



7.7 Switching Characteristics: 250 kbps Device (SN65HVD72) Bit Time ≥ 4 µs
over recommended operating conditions
                    PARAMETER                                    TEST CONDITIONS                      MIN        TYP        MAX       UNIT
DRIVER
                  Driver differential output rise or
tr, tf                                                                                                 0.3        0.7           1.2    µs
                  fall time
                                                         RL = 54 Ω
                                                                             See Figure 12
tPHL, tPLH        Driver propagation delay               CL = 50 pF                                               0.7            1     µs
tSK(P)            Driver pulse skew, |tPHL – tPLH|                                                                              0.2    µs
tPHZ, tPLZ        Driver disable time                                                                             0.1           0.4    µs
                                                                             See Figure 13
                                                         Receiver enabled                                         0.5            1
tPZH, tPZL        Driver enable time                                         and Figure 14                                             µs
                                                         Receiver disabled                                          3            9
RECEIVER
tr, tf            Receiver output rise or fall time                                                                12           30     ns
tPHL, tPLH        Receiver propagation delay time        CL = 15 pF          See Figure 15                         75        100       ns
tSK(P)            Receiver pulse skew, |tPHL – tPLH|                                                                3           15     ns
tPLZ, tPHZ        Receiver disable time                                                                            40        100       ns
tPZL(1), tPZH(1),                                        Driver enabled      See Figure 16                         20           50     ns
                  Receiver enable time
tPZL(2), tPZH(2)                                         Driver disabled     See Figure 17                          3            8     µs


Copyright © 2012–2019, Texas Instruments Incorporated                                                  Submit Documentation Feedback         7
                                          Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
SN65HVD72, SN65HVD75, SN65HVD78
SLLSE11H – MARCH 2012 – REVISED MARCH 2019                                                                                        www.ti.com


7.8 Switching Characteristics: 20 Mbps Device (SN65HVD75) Bit Time ≥50 ns
over recommended operating conditions
                  PARAMETER                                  TEST CONDITIONS                    MIN          TYP          MAX       UNIT
DRIVER
                Driver differential output rise or
tr, tf                                                                                             2            7           14       ns
                fall time
                                                     RL = 54 Ω
                                                                         See Figure 12
tPHL, tPLH      Driver propagation delay             CL = 50 pF                                    7           11           17       ns
tSK(P)          Driver pulse skew, |tPHL – tPLH|                                                                0             2      ns
tPHZ, tPLZ      Driver disable time                                                                            12           50       ns
                                                                         See Figure 13
                                                     Receiver enabled                                          10           20       ns
tPZH, tPZL      Driver enable time                                       and Figure 14
                                                     Receiver disabled                                          3             7      µs
RECEIVER
tr, tf          Receiver output rise or fall time                                                               5           10       ns
tPHL, tPLH      Receiver propagation delay time      CL = 15 pF          See Figure 15                         60           70       ns
tSK(P)          Receiver pulse skew, |tPHL – tPLH|                                                              0             6      ns
tPLZ, tPHZ      Receiver disable time                                                                          15           30       ns
tpZL(1), tPZH(1),                                    Driver enabled      See Figure 16                         10           50       ns
                  Receiver enable time
tPZL(2), tPZH(2)                                     Driver disabled     See Figure 17                          3             8      µs



7.9 Switching Characteristics: 50 Mbps Device (SN65HVD78) Bit Time ≥20 ns
over recommended operating conditions
                  PARAMETER                                  TEST CONDITIONS                    MIN          TYP          MAX       UNIT
DRIVER
                Driver differential output rise or
tr, tf                                                                                             1            3             6      ns
                fall time
                                                     RL = 54 Ω
                                                                         See Figure 12
tPHL, tPLH      Driver propagation delay             CL = 50 pF                                                 9           15       ns
tSK(P)          Driver pulse skew, |tPHL – tPLH|                                                                0             1      ns
tPHZ, tPLZ      Driver disable time                                                                            10           30       ns
                                                                         See Figure 13
                                                     Receiver enabled                                          10           30       ns
tPZH, tPZL      Driver enable time                                       and Figure 14
                                                     Receiver disabled                                                        8      µs
RECEIVER
tr, tf          Receiver output rise or fall time                                                  1            3             6      ns
tPHL, tPLH      Receiver propagation delay time      CL = 15 pF          See Figure 15                                      35       ns
tSK(P)          Receiver pulse skew, |tPHL – tPLH|                                                                          2.5      ns
tPLZ, tPHZ      Receiver disable time                                                                           8           30       ns
tpZL(1), tPZH(1),                                    Driver enabled      See Figure 16                         10           30       ns
                  Receiver enable time
tPZL(2), tPZH(2)                                     Driver disabled     See Figure 17                          3             8      µs




8        Submit Documentation Feedback                                                   Copyright © 2012–2019, Texas Instruments Incorporated

                                         Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
                                                                                                                                                                                                                  SN65HVD72, SN65HVD75, SN65HVD78
www.ti.com                                                                                                                                                                                                                SLLSE11H – MARCH 2012 – REVISED MARCH 2019


7.10 Typical Characteristics

                                                            3.5                                                                                                                                       3.5
                                                                                                                          VCC = 3.3 V,
                                                                                                                          DE = VCC,                                                                                                                               VCC = 3.3 V,
                                                                                                                                                                                                                               100 W            60 W




                                                                                                                                                  VO - Driver Differential Output Voltage - V
                                                                                                       VOH
                                                             3                                                                                                                                         3                                                          DE = VCC,
          VO - Driver Output Voltage - V




                                                                                                                          D=0V
                                                                                                                                                                                                                                                                  D=0V

                                                            2.5                                                                                                                                       2.5


                                                             2                                                                                                                                         2


                                                            1.5                                                                                                                                       1.5
                                                                                             VOL

                                                             1                                                                                                                                         1


                                                            0.5                                                                                                                                       0.5


                                                             0                                                                                                                                         0
                                                              0               20         40         60        80                         100                                                                0             20        40        60         80                          100
                                                                                IO - Driver Output Current - mA                                                                                                            IO - Driver Output Current - mA

        Figure 1. Driver Output Voltage vs Driver Output Current                                                                               Figure 2. Driver Differential Output Voltage vs Driver Output
                                                                                                                                                                           Current
                                                             40                                                                                                                                         4

                                                                      TA = 25°C
                                                             35       RL = 54 W                                                                                                                        3.5
                                                                      D = VCC
                                                                      DE = VCC
                          IO - Driver Output Current - mA




                                                             30                                                                                                      Driver Rise and Fall Time - ns     3


                                                             25                                                                                                                                        2.5


                                                             20                                                                                                                                         2


                                                             15                                                                                                                                        1.5


                                                             10                                                                                                                                         1


                                                              5                                                                                                                                        0.5


                                                              0                                                                                                                                             0
                                                                  0      0.5          1          1.5        2            2.5    3        3.5                                                                -40     -20        0          20    40         60     80         100    120
                                                                                                                                                                                                                                                       o
                                                                                          VCC Supply Voltage - V                                                                                                                         Temperature - C

                                     Figure 3. Driver Output Current vs Supply Voltage                                                                                                                Figure 4. SN65HVD78 Driver Rise or Fall Time vs
                                                                                                                                                                                                                      Temperature
                                                             12                                                                                                                                        70

                                                                                                                                                                                                                RL = 54 W
                                                                                                                                                                                                       60
                                                             10
                       Driver Propagation Delay - ns




                                                                                                                                                                                                       50
                                                                                                                                                            ICC - Supply Current - mA




                                                              8

                                                                                                                                                                                                       40
                                                              6
                                                                                                                                                                                                       30

                                                              4
                                                                                                                                                                                                       20


                                                              2                                                                                                                                        10


                                                              0                                                                                                                                         0
                                                              -40       -20       0         20         40           60    80   100   120                                                                 50       70      90       110    130   150    170      190    210    230   250
                                                                                                                o
                                                                                           Temperature - C                                                                                                                          Signaling Rate - kbps

                                   Figure 5. SN65HVD78 Driver Propagation Delay vs                                                                          Figure 6. SN65HVD72 Supply Current vs Signal Rate
                                                    Temperature




Copyright © 2012–2019, Texas Instruments Incorporated                                                                                                                                                                               Submit Documentation Feedback                          9
                                                                                                            Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
SN65HVD72, SN65HVD75, SN65HVD78
SLLSE11H – MARCH 2012 – REVISED MARCH 2019                                                                                                                                                                                                              www.ti.com


Typical Characteristics (continued)
                                     70                                                                                                                                                     70

                                              RL = 54 W                                                                                                                                              RL = 54 W
                                     60                                                                                                                                                     60


                                     50                                                                                                                                                     50
         ICC - Supply Current - mA




                                                                                                                                                                ICC - Supply Current - mA
                                     40                                                                                                                                                     40


                                     30                                                                                                                                                     30


                                     20                                                                                                                                                     20


                                     10                                                                                                                                                     10


                                     0                                                                                                                                                      0
                                          0     2    4    6                           8      10    12      14   16     18     20                                                                 0     5     10   15     20   25    30   35   40   45   50

                                                          Signaling Rate - Mbps                                                                                                                                   Signaling Rate - Mbps
         Figure 7. SN65HVD75 Supply Current vs Signal Rate                                                                                                     Figure 8. SN65HVD78 Supply Current vs Signal Rate
                                                                                      3.5


                                                                                       3


                                                                                      2.5
                                                              Receiver Output (R) V




                                                                                                                                                                                            VIT- (-7V)
                                                                                       2
                                                                                                                                                                                            VIT-(0V)
                                                                                                                                                                                            VIT-(12V)
                                                                                      1.5
                                                                                                                                                                                            VIT+(-7V)
                                                                                                                                                                                            VIT+(0V)
                                                                                       1
                                                                                                                                                                                            VIT+(12V)

                                                                                      0.5


                                                                                       0
                                                                                          -150      -140        -130        -120        -110      -100       -90                             -80           -70     -60        -50
                                                                                                                                   Differential Input Voltage (VID) mV
                                                                                                                        Figure 9. Receiver Output vs Input




10     Submit Documentation Feedback                                                                                                                                                                   Copyright © 2012–2019, Texas Instruments Incorporated

                                                                                                  Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
                                                                                                  SN65HVD72, SN65HVD75, SN65HVD78
www.ti.com                                                                                             SLLSE11H – MARCH 2012 – REVISED MARCH 2019


8 Parameter Measurement Information
Input generator rate is 100 kbps, 50% duty cycle, rise or fall time is less than 6 ns, output impedance is 50 Ω.
                                                     V CC                  375 : r 1%

                                                        DE
                                                             A
                                                 D
                                   0 V or 3 V                     V OD    60 : r 1%
                                                                                            +     ± 7 V < V( test) < 12 V
                                                             B                              _


                                                                           375 : r 1%
                                                                          Copyright © 2016, Texas Instruments Incorporated

            Figure 10. Measurement of Driver Differential Output Voltage With Common-Mode Load

                                                                                             A                                               VA
                                                      RL/2
                               A
                   D                                                                         B                                               VB
     0 V or 3 V                           VOD
                                                                                                               VOC(PP)                    'VOC(SS)
                               B
                                                      RL/2
                                                                          VOC
                                                                  CL
                                                                                          VOC




                                                                                                    Copyright © 2016, Texas Instruments Incorporated

         Figure 11. Measurement of Driver Differential and Common-Mode Output With RS-485 Load



                                                                                                                   50%                 50%
                                      A

                                                                                                                                                  |
                                      B                :
                             :
                                                                                                                                                  |


                                                                                                         Copyright © 2016, Texas Instruments Incorporated

     Figure 12. Measurement of Driver Differential Output Rise and Fall Times and Propagation Delays

                                                                                                                                                   3V
                                     A      S1
                         D                                   VO                 VI
                  3V                                                                                     50%                     50%

                                     B                                                                                                             0V
                          DE                                        RL = 110:                                                          0. 5 V
                                     CL = 50 pF r 20%                                      tPZH
    Input                                                           r 1%                                                                           VOH
                  VI    50 :       CL Includes Fixture                                                                                          90%
   Generator
                                   and Instrumentation                          VO
                                          Capacitance                                                       50%
                                                                                                                                                  | 0V
                                                                                                                    tPHZ


                                                                                                         Copyright © 2016, Texas Instruments Incorporated

            D at 3 V to test non-inverting output, D at 0 V to test inverting output.

Figure 13. Measurement of Driver Enable and Disable Times With Active High Output and Pulldown Load

Copyright © 2012–2019, Texas Instruments Incorporated                                                       Submit Documentation Feedback                11
                                            Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
SN65HVD72, SN65HVD75, SN65HVD78
SLLSE11H – MARCH 2012 – REVISED MARCH 2019                                                                                                  www.ti.com


                                         Parameter Measurement Information (continued)
                                                          3V
                                                               RL = 110:                                                                         | 3V
                                    A                          r1%
                                              S1                                   VI                50%                        50%
                        D                                           VO
                 3V
                                                                                                                                                     0V
                                    B                                                   t PZL                        t PLZ
                        DE
                                   CL = 50 pFr 20%                                                                                               | 3V
      Input
     Generator   VI     50 :     CL Includes Fixture                               VO
                                 and Instrumentation                                                           50%
                                                                                                                                          10%
                                        Capacitance                                                                                              VOL


                                                                                                     Copyright © 2016, Texas Instruments Incorporated

            D at 0 V to test non-inverting output, D at 3 V to test inverting output.

  Figure 14. Measurement of Driver Enable and Disable Times With Active Low Output and Pullup Load

                                                                                                                                                      3V
                                          A
                                                               VO                       VI                       50%                  50%
                                                          R
      Input
                  VI     50 :                                                                                                                         0V
     Generator                            B                                                      tPLH                                        t PHL
                                1. 5 V                               CL = 15 pF r 20%                                                                 VOH
                                              RE                                                                       90% 90%
                                  0V                                                    VO                 50%                           50%
                                                                                                          10%                             10%         VOL
                                                   CL Includes Fixture
                                                                                                         tr                                     tf
                                                    and Instrumentation
                                                    Capacitance
                                                                                                        Copyright © 2016, Texas Instruments Incorporated

           Figure 15. Measurement of Receiver Output Rise and Fall Times and Propagation Delays




12       Submit Documentation Feedback                                                          Copyright © 2012–2019, Texas Instruments Incorporated

                                              Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
                                                                                    SN65HVD72, SN65HVD75, SN65HVD78
www.ti.com                                                                              SLLSE11H – MARCH 2012 – REVISED MARCH 2019


                                     Parameter Measurement Information (continued)

                        3V                                                                                    V CC

                           DE                       A
                  D                                                  R VO                1k : r 1%
 0 V or 3V                                                                                                           S1
                                                    B
                                                               RE           CL = 15 pFr 20%
                                                                            CL  Includes Fixture
                                                                              and Instrumentation
                      Input
                                          VI            50:                  Capacitance
                    Generator




                                                                                                            3V

             VI                                 50%                         50%

                                                                                                            0V
                          tPZH(1)                                                   t PHZ
                                                                                                           VOH
                                                                                                                       D at 3V
                                                                                  90%                                 S 1 to GND
            VO                                           50%

                                                                                                         | 0V

                             tPZL(1)                                                     t PLZ
                                                                                                         V CC
                                                                                                                       D at 0V
            VO                                                 50%                                                    S 1 to VCC
                                                                                        10%
                                                                                                           VOL
                                                                                        Copyright © 2016, Texas Instruments Incorporated

               Figure 16. Measurement of Receiver Enable and Disable Times With Driver Enabled




Copyright © 2012–2019, Texas Instruments Incorporated                                       Submit Documentation Feedback              13
                                         Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
SN65HVD72, SN65HVD75, SN65HVD78
SLLSE11H – MARCH 2012 – REVISED MARCH 2019                                                                                            www.ti.com


                                Parameter Measurement Information (continued)

                                                                                                  VCC

                                                A
                     0 V or 1.5 V                              R VO               1 k: r 1%
                                                                                                        S1
                                                B
                     1.5 V or 0 V                                     CL = 15 pF r20%
                                                          RE
                                                                      CL Includes Fixture
                                                                      and Instrumentation
                           Input                                      Capacitance
                         Generator       VI     50 :




                                                                                                      3V

                          VI             50%

                                                                                                      0V
                                    tPZH(2)
                                                                                                      VOH
                                                                                                             A at 1.5 V
                         VO                            50%                                                   B at 0 V
                                                                                                             S1 to GND
                                                                                                      GND
                                      tPZL(2)
                                                                                                      VCC
                                                                                                              A at 0 V
                         VO                         50%                                                       B at 1.5 V
                                                                                                              S1 to VCC
                                                                                                      VOL
                                                                          Copyright © 2016, Texas Instruments Incorporated

                    Figure 17. Measurement of Receiver Enable Times With Driver Disabled




14     Submit Documentation Feedback                                                          Copyright © 2012–2019, Texas Instruments Incorporated

                                     Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
                                                                                       SN65HVD72, SN65HVD75, SN65HVD78
www.ti.com                                                                                 SLLSE11H – MARCH 2012 – REVISED MARCH 2019


9 Detailed Description

9.1 Overview
The SN65HVD72, SN65HVD75, and SN65HVD78 are low-power, half-duplex RS-485 transceivers available in 3
speed grades suitable for data transmission up to 250 kbps, 20 Mbps, and 50 Mbps.
These devices have active-high driver enables and active-low receiver enables. A standby current of less than
2 µA can be achieved by disabling both driver and receiver.

9.2 Functional Block Diagram




9.3 Feature Description
Internal ESD protection circuits protect the transceiver against electrostatic discharges (ESD) according to IEC
61000-4-2 of up to ±12 kV, and against electrical fast transients (EFT) according to IEC 61000-4-4 of up to
±4 kV.
The SN65HVD7x half-duplex family provides internal biasing of the receiver input thresholds in combination with
large input threshold hysteresis. At a positive input threshold of VIT+ = –20 mV and an input hysteresis of
VHYS = 50 mV, the receiver output remains logic high under a bus-idle or bus-short condition even in the
presence of 140-mVPP differential noise without the need for external failsafe biasing resistors.
Device operation is specified over a wide ambient temperature range from –40°C to 125°C.

9.4 Device Functional Modes
When the driver enable pin, DE, is logic high, the differential outputs A and B follow the logic states at data input
D. A logic high at D causes A to turn high and B to turn low. In this case the differential output voltage defined as
VOD = VA – VB is positive. When D is low, the output states reverse, B turns high, A becomes low, and VOD is
negative.
When DE is low, both outputs turn high-impedance. In this condition the logic state at D is irrelevant. The DE pin
has an internal pulldown resistor to ground; thus, when left open, the driver is disabled (high-impedance) by
default. The D pin has an internal pullup resistor to VCC; thus, when left open while the driver is enabled, output A
turns high and B turns low.

                                                        Table 1. Driver Function Table
                         INPUT                 ENABLE              OUTPUTS
                                                                                            DESCRIPTION
                            D                     DE              A       B
                            H                      H              H       L    Actively drive bus high
                            L                      H              L       H    Actively drive bus low
                            X                      L              Z       Z    Driver disabled
                            X                   OPEN              Z       Z    Driver disabled by default
                         OPEN                      H              H       L    Actively drive bus high by default




Copyright © 2012–2019, Texas Instruments Incorporated                                            Submit Documentation Feedback    15
                                         Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
SN65HVD72, SN65HVD75, SN65HVD78
SLLSE11H – MARCH 2012 – REVISED MARCH 2019                                                                                           www.ti.com


When the receiver enable pin, RE, is logic low, the receiver is enabled. When the differential input voltage
defined as VID = VA – VB is positive and higher than the positive input threshold, VIT+, the receiver output, R,
turns high. When VID is negative and lower than the negative input threshold, VIT–, the receiver output turns low.
If VID is between VIT+ and VIT–, the output is indeterminate.
When RE is logic high or left open, the receiver output is high-impedance and the magnitude and polarity of VID
are irrelevant. Internal biasing of the receiver inputs causes the output to go failsafe-high when the transceiver is
disconnected from the bus (open-circuit), the bus lines are shorted (short-circuit), or the bus is not actively driven
(idle bus).

                                                     Table 2. Receiver Function Table
                         DIFFERENTIAL INPUT               ENABLE            OUTPUT
                                                                                                  DESCRIPTION
                             VID = VA – VB                    RE                R
                               VIT+ < VID                     L                 H    Receive valid bus high
                            VIT– < VID < VIT+                 L                 ?    Indeterminate bus state
                               VID < VIT–                     L                 L    Receive valid bus low
                                    X                         H                 Z    Receiver disabled
                                    X                        OPEN               Z    Receiver disabled by default
                            Open-circuit bus                  L                 H    Failsafe high output
                            Short-circuit bus                 L                 H    Failsafe high output
                          Idle (terminated) bus               L                 H    Failsafe high output



       D and RE Inputs                                    DE Input                                                                 R Output
                                        Vcc                                                 Vcc                        Vcc


                   3M
                1. 5 k                                             1. 5 k
     D , RE                                             DE                                                                                R

                  9V                                                 9V         1M                                           9V




       Receiver Inputs                                                                                      Vcc              Driver Outputs
                                                             Vcc


                                        R2      R2
                              R1
         A
                                                                                                                                     A
                              R1                                            R
         B
                                                                                                                                     B
                 16 V                   R3      R3
                                                                                                            16 V




                                                                                                  Copyright © 2016, Texas Instruments Incorporated

                                   Figure 18. Equivalent Input and Output Circuit Diagrams


16       Submit Documentation Feedback                                                       Copyright © 2012–2019, Texas Instruments Incorporated

                                        Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
                                                                                           SN65HVD72, SN65HVD75, SN65HVD78
www.ti.com                                                                                     SLLSE11H – MARCH 2012 – REVISED MARCH 2019


10 Application and Implementation

                                                           NOTE
               Information in the following applications sections is not part of the TI component
               specification, and TI does not warrant its accuracy or completeness. TI’s customers are
               responsible for determining suitability of components for their purposes. Customers should
               validate and test their design implementation to confirm system functionality.


10.1 Application Information
The SN65HVD72, SN65HVD75, and SN65HVD78 are half-duplex RS-485 transceivers commonly used for
asynchronous data transmission. The driver and receiver enable pins allow for the configuration of different
operating modes.

                  R                                            R                                        R
                             R                                           R                                          R
                RE                         A                 RE                    A                  RE                          A

                DE                         B                 DE                    B                  DE                          B
                 D                                             D                                        D
                         D                                           D                                          D


            a) Independent driver and                   b) Combined enable signals for               c) Receiver always on
               receiver enable signals                     use as directional control pin
                                                                                       Copyright © 2016, Texas Instruments Incorporated

                                               Figure 19. Transceiver Configurations

Using independent enable lines provides the most flexible control as it allows for the driver and the receiver to be
turned on and off individually. While this configuration requires two control lines, it allows for selective listening
into the bus traffic, whether the driver is transmitting data or not.
Combining the enable signals simplifies the interface to the controller by forming a single direction-control signal.
In this configuration, the transceiver operates as a driver when the direction-control line is high, and as a receiver
when the direction-control line is low.
Additionally, only one line is required when connecting the receiver-enable input to ground and controlling only
the driver-enable input. In this configuration, a node not only receives the data from the bus, but also the data it
sends and can verify that the correct data have been transmitted.




Copyright © 2012–2019, Texas Instruments Incorporated                                               Submit Documentation Feedback         17
                                         Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
SN65HVD72, SN65HVD75, SN65HVD78
SLLSE11H – MARCH 2012 – REVISED MARCH 2019                                                                                                                  www.ti.com


10.2 Typical Application
An RS-485 bus consists of multiple transceivers connected in parallel to a bus cable. To eliminate line
reflections, each cable end is terminated with a termination resistor, RT, whose value matches the characteristic
impedance, Z0, of the cable. This method, known as parallel termination, allows for relatively high data rates over
long cable lengths.


      R          R                                                                                                                                  R         R
                           A                                                                                                          A
     RE                                                                                                                                                       RE
                                RT                                                                                             RT
                           B                                                                                                          B
     DE                                                                                                                                                       DE
     D       D                                                                                                                                          D     D
                                                                A   B                                     A    B




                                                            R                                         R
                                                                         D                                           D


                                                            R RE DE D                                 R RE DE D
                                                                                                                    Copyright © 2016, Texas Instruments Incorporated

                         Figure 20. Typical RS-485 Network With SN65HVD7x Transceivers

Common cables used are unshielded twisted pair (UTP), such as low-cost CAT-5 cable with Z0 = 100 Ω, and
RS-485 cable with Z0 = 120 Ω. Typical cable sizes are AWG 22 and AWG 24.
The maximum bus length is typically given as 4000 ft or 1200 m, and represents the length of an AWG 24 cable
whose cable resistance approaches the value of the termination resistance, thus reducing the bus signal by half
or 6 dB. Actual maximum usable cable length depends on the signaling rate, cable characteristics, and
environmental conditions.

10.2.1 Design Requirements
RS-485 is a robust electrical standard suitable for long-distance networking that may be used in a wide range of
applications with varying requirements, such as distance, data rate, and number of nodes.

10.2.1.1 Data Rate and Bus Length
There is an inverse relationship between data rate and bus length, meaning the higher the data rate, the shorter
the cable length; and conversely, the lower the data rate, the longer the cable may be without introducing data
errors. While most RS-485 systems use data rates between 10 kbps and 100 kbps, some applications require
data rates up to 250 kbps at distances of 4000 feet and longer. Longer distances are possible by allowing for
small signal jitter of up to 5 or 10%.
                                                    10000
                                                                                                 5%, 10%, and 20% Jitter
                                Cable Length (ft)




                                                     1000
                                                                                     Conservative
                                                                                    Characteristics

                                                      100




                                                       10
                                                        100         1k       10 k        100 k            1M       10 M      100 M
                                                                              Data Rate (bps)

                                            Figure 21. Cable Length vs Data Rate Characteristic


18        Submit Documentation Feedback                                                                            Copyright © 2012–2019, Texas Instruments Incorporated

                                                     Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
                                                                                       SN65HVD72, SN65HVD75, SN65HVD78
www.ti.com                                                                                   SLLSE11H – MARCH 2012 – REVISED MARCH 2019


Typical Application (continued)
10.2.1.2 Stub Length
When connecting a node to the bus, the distance between the transceiver inputs and the cable trunk, known as
the stub, should be as short as possible. Stubs present a non-terminated piece of bus line which can introduce
reflections as the length of the stub increases. As a general guideline, the electrical length, or round-trip delay, of
a stub should be less than one-tenth of the rise time of the driver, thus giving a maximum physical stub length as
shown in Equation 1.
       Lstub ≤ 0.1 × tr × v × c
       where:
             •     tr is the 10/90 rise time of the driver
             •     c is the speed of light (3 × 108 m/s)
             •     v is the signal velocity of the cable or trace as a factor of c                                                  (1)
Per Equation 1, Table 3 shows the maximum cable-stub lengths for the minimum driver output rise times of the
SN65HVD7x half-duplex family of transceivers for a signal velocity of 78%.

                                                        Table 3. Maximum Stub Length
                                      MINIMUM DRIVER OUTPUT RISE TIME                MAXIMUM STUB LENGTH
                       DEVICE
                                                    (ns)                             (m)                    (ft)
                     SN65HVD72                             300                        7                     23
                     SN65HVD75                              2                        0.05                  0.16
                     SN65HVD78                              1                        0.025                 0.08

10.2.1.3 Bus Loading
The RS-485 standard specifies that a compliant driver must be able to drive 32 unit loads (UL), where 1 unit load
represents a receiver input current of 1 mA at 12 V, or a load impedance of approximately 12 kΩ. Because the
SN65HVD72 and SN65HVD75 have a receiver input current of 150 µA at 12 V, they are 3/20 UL transceivers,
and no more than 213 transceivers should be connected to the bus. Similarly, the SN65HVD78 has a receiver
input current of 333 µA at 12 V and is a 1/3 UL transceiver, meaning no more than 96 transceivers should be
connected to the bus.

10.2.1.4         Receiver Failsafe
The differential receiver is failsafe to invalid bus states caused by:
• Open bus conditions such as a disconnected connector
• Shorted bus conditions such as cable damage shorting the twisted-pair together, or
• Idle bus conditions that occur when no driver on the bus is actively driving
In any of these cases, the differential receiver will output a failsafe logic high so that the output of the receiver is
not indeterminate.
Receiver failsafe is accomplished by offsetting the receiver thresholds such that the input-indeterminate range
does not include zero volts differential. To comply with the RS-422 and RS-485 standards, the receiver output
must output a high when the differential input VID is more positive than 200 mV, and must output a low when VID
is more negative than –200 mV. The receiver parameters which determine the failsafe performance are VIT+,
VIT–, and VHYS (the separation between VIT+ and VIT–). As shown in Electrical Characteristics, differential signals
more negative than –200 mV will always cause a low receiver output, and differential signals more positive than
200 mV will always cause a high receiver output.
When the differential input signal is close to zero, it is still above the maximum VIT+ threshold of –20 mV, and the
receiver output will be high. Only when the differential input is more than VHYS below VIT+ will the receiver output
transition to a low state. Therefore, the noise immunity of the receiver inputs during a bus fault condition includes
the receiver hysteresis value, VHYS, as well as the value of VIT+.




Copyright © 2012–2019, Texas Instruments Incorporated                                            Submit Documentation Feedback      19
                                         Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
SN65HVD72, SN65HVD75, SN65HVD78
SLLSE11H – MARCH 2012 – REVISED MARCH 2019                                                                                                    www.ti.com



                                                                R



                                               VHYS-min
                                                   50mV

                                                                                                     VID - mV
                                             -70          -20   0                         70




                                                    Vnoise-max = 140mVpp

                                       Figure 22. SN65HVD7x Noise Immunity

10.2.1.5 Transient Protection
The bus pins of the SN65HVD7x transceiver family possess on-chip ESD protection against ±15-kV human body
model (HBM) and ±12-kV IEC 61000-4-2 contact discharge. The IEC-ESD test is far more severe than the HBM-
ESD test. The 50% higher charge capacitance, CS, and 78% lower discharge resistance, RD, of the IEC-model
produce significantly higher discharge currents than the HBM-model.
As stated in the IEC 61000-4-2 standard, contact discharge is the preferred test method; although IEC air-gap
testing is less repeatable than contact testing, air discharge protection levels are inferred from the contact
discharge test results.

                      RC                       RD
                                                                                         40
                      50M                      330                                       35
                                                                                         30       10kV IEC
                                                                           Current - A




                      (1M)                     (1.5k)
                                                                                         25
      High-Voltage                    150pF               Device
         Pulse                CS                          Under                          20
       Generator                     (100pF)               Test                          15
                                                                                         10
                                                                                          5                          10kV HBM
                                                                                          0
                                                                                              0      50      100     150       200   250     300
                                                                                                                   Time - ns
                                                                                                     Copyright © 2016, Texas Instruments Incorporated

      Figure 23. HBM and IEC-ESD Models and Currents in Comparison (HBM Values in Parenthesis)

The on-chip implementation of IEC ESD protection significantly increases the robustness of equipment. Common
discharge events occur due to human contact with connectors and cables. Designers may choose to implement
protection against longer duration transients, typically referred to as surge transients.
EFTs are generally caused by relay-contact bounce or the interruption of inductive loads. Surge transients often
result from lightning strikes (direct strike or an indirect strike which induce voltages and currents), or the
switching of power systems, including load changes and short circuit switching. These transients are often
encountered in industrial environments, such as factory automation and power-grid systems.
Figure 24 compares the pulse-power of the EFT and surge transients with the power caused by an IEC ESD
transient. The left-hand diagram shows the relative pulse-power for a 0.5-kV surge transient and 4-kV EFT
transient, both of which dwarf the 10-kV ESD transient visible in the lower-left corner. 500-V surge transients are
representative of events that may occur in factory environments in industrial and process automation.
The right-hand diagram shows the pulse-power of a 6-kV surge transient, relative to the same 0.5-kV surge
transient. 6-kV surge transients are most likely to occur in power generation and power-grid systems.



20     Submit Documentation Feedback                                                                  Copyright © 2012–2019, Texas Instruments Incorporated

                                   Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
                                                                                                                                                          SN65HVD72, SN65HVD75, SN65HVD78
www.ti.com                                                                                                                                                  SLLSE11H – MARCH 2012 – REVISED MARCH 2019



                                                                                                                                          3.0
                                                                                                                                          2.8
                                                                                                                                          2.6                                 6-kV Surge
                                                                                                                                          2.4
                              22                                                                                                          2.2




                                                                                                                       Pulse Power (MW)
                              20                                                                                                          2.0
                              18                                             0.5-kV Surge                                                 1.8
                              16                                                                                                          1.6
           Pulse Power (kW)




                              14                                                                                                          1.4
                              12                                                                                                          1.2
                                       4-kV EFT
                              10                                                                                                          1.0
                               8                                                                                                          0.8
                               6                                                                                                          0.6
                               4                                                                                                          0.4
                               2       10-kV ESD                                                                                          0.2                   0.5-kV Surge
                               0                                                                                                            0
                                   0     5    10   15                      20         25    30   35   40                                        0     5    10     15     20    25   30     35   40
                                                    Time (µs)                                                                                                      Time (µs)

                                             Figure 24. Power Comparison of ESD, EFT, and Surge Transients

In the case of surge transients, high-energy content is characterized by long pulse duration and slow decaying
pulse power. The electrical energy of a transient that is dumped into the internal protection cells of a transceiver
is converted into thermal energy which heats and destroys the protection cells, thus destroying the transceiver.
Figure 25 shows the large differences in transient energies for single ESD, EFT, and surge transients, as well as
for an EFT pulse train, commonly applied during compliance testing.
                                                                           1000


                                                                            100

                                                                                                          Surge
                                                                                10


                                                                                 1
                                                                                                 EFT Pulse Train
                                                        Pulse Energy (J)




                                                                                0.1


                                                                            0.01

                                                                                                                      EFT
                                                                            10-3


                                                                            10-4

                                                                                                                                                ESD
                                                                            10-5


                                                                            10-6
                                                                                           0.5        1           2                         4         6    8 10     15
                                                                                                      Peak Pulse Voltage (kV)

                                                                           Figure 25. Comparison of Transient Energies




Copyright © 2012–2019, Texas Instruments Incorporated                                                                                                             Submit Documentation Feedback      21
                                                                           Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
SN65HVD72, SN65HVD75, SN65HVD78
SLLSE11H – MARCH 2012 – REVISED MARCH 2019                                                                                               www.ti.com


10.2.2 Detailed Design Procedure

10.2.2.1 External Transient Protection
To protect bus nodes against high-energy transients, the implementation of external transient protection devices
is necessary. Figure 26 suggests two circuits that provide protection against light and heavy surge transients, in
addition to ESD and EFT transients. Table 4 presents the associated bill of materials.

                                                             Table 4. Bill of Materials
         DEVICE                                      FUNCTION                             ORDER NUMBER                        MANUFACTURER
XCVR                         3.3-V, 250-kbps RS-485 Transceiver                SN65HVD72D                                              TI
R1, R2                       10-Ω, Pulse-Proof Thick-Film Resistor             CRCW060310RJNEAHP                                     Vishay
TVS                          Bidirectional 400-W Transient Suppressor          CDSOT23-SM712                                        Bourns
TBU1, TBU2                   Bidirectional Surge Suppressor                    TBU-CA-065-200-WH                                    Bourns
                             200-mA Transient Blocking Unit, 200-V, Metal-
MOV1, MOV2                                                                     MOV-10D201K                                          Bourns
                             Oxide Varistor

               Vcc                                                             Vcc
                                          Vcc                                                            Vcc
                  10k                                                            10k
                                            0.1 F      R1                                                  0.1 F       R1       TBU1
                  1                   8                                          1                   8
       RxD            R       Vcc                                        RxD         R       Vcc
                                                      TVS                                                             TVS               MOV1
                  2                   7                                          2                   7
     MCU              RE          B                                    MCU           RE          B
                           XCVR                                                           XCVR
                  3                   6                                          3                   6
         DIR          DE          A                                      DIR         DE          A
                  4                   5                                          4                   5                                  MOV2
         TxD          D      GND                                         TxD         D      GND
                                                       R2                                                              R2       TBU2
                  10k                                                            10k

                                                                                                     Copyright © 2016, Texas Instruments Incorporated

                        Figure 26. Transient Protections Against ESD, EFT, and Surge Transients

The left-hand circuit provides surge protection of ≥500-V surge transients, while the right-hand circuit can
withstand surge transients of up to 5 kV.




22       Submit Documentation Feedback                                                       Copyright © 2012–2019, Texas Instruments Incorporated

                                                Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
                                                                                                                SN65HVD72, SN65HVD75, SN65HVD78
www.ti.com                                                                                                             SLLSE11H – MARCH 2012 – REVISED MARCH 2019


10.2.2.2 Isolated Bus Node Design
Many RS-485 networks use isolated bus nodes to prevent the creation of unintended ground loops and their
disruptive impact on signal integrity. An isolated bus node typically includes a microcontroller that connects to the
bus transceiver via a multi-channel, digital isolator (Figure 27).

                                            0.1 F
                                                     2                    1:1.33 MBR0520L                                                           3.3VISO
                                                   Vcc D2 3                                                             4
                                                                                                                               IN         OUT
                                                                                                                                                1

                                                 SN6501                                               10 F 0.1 F
                                                                                                                               TLV70733                10 F
                                                                                                                           3                    2
                                                             1                                                                 EN     GND
                                                  GND D1
                                                                   10 F            MBR0520L
                                                     4,5


     L1                                                                    ISO-BARRIER
                            3.3V
     N       PSU                                                                   0.1 F                0.1 F
    PE
                                                 0.1 F
                                                                                         1           16                               0.1 F
                                                                            4.7k                                4.7k
     PE                                                                                  Vcc1     Vcc2
                                                         2                           7                  10
                                                                                       EN1 ISO7241 EN2                                8
                                                     DVcc                 16         6                  11             1            Vcc
                                                             UCA0RXD                   OUTD         IND                    R                             R1
                                       5                                                                                                        7
                                           XOUT                           11         3                  14             2                    B
                                                    MSP430         P3.0                INA        OUTA                     RE SN65
                                       6             F2132                12         4                  13             3                                 R2
                                           XIN                     P3.1                INB        OUTB                     DE HVD72             6
                                                                          15         5                  12             4                    A
                                                     DVss    UCA0TXD                   INC        OUTC                     D GND2
                                                         4                              GND1     GND2                                5                    TVS
                                                                                       2,8           9,15


                                                                                                                                                        R HV    C HV

                                                                 Short thick Earth wire or Chassis
                                                                                                                                                                  PE
                                                                                                                                                                island
                                    Protective Earth Ground,        R1,R2, TVS: see Table 1
                                    Equipment Safety Ground
                                                                    RHV = 1M , 2kV high-voltage resistor, TT electronics, HVC 2010 1M0 G T3
                                   Floating RS-485 Common           CHV = 4.7nF, 2kV high-voltage capacitor, NOVACAP, 1812 B 472 K 202 N T

                                                                                                                       Copyright © 2016, Texas Instruments Incorporated

                                     Figure 27. Isolated Bus Node with Transient Protection

Power isolation is accomplished using the push-pull transformer driver SN6501 and a low-cost LDO, TLV70733.
Signal isolation uses the quadruple digital isolator ISO7241. Notice that both enable inputs, EN1 and EN2, are
pulled up via 4.7 kΩ resistors to limit their input currents during transient events.
While the transient protection is similar to the one in Figure 26 (left circuit), an additional high-voltage capacitor is
used to divert transient energy from the floating RS-485 common further towards Protective Earth (PE) ground.
This is necessary as noise transients on the bus are usually referred to Earth potential.
RHV refers to a high voltage resistor, and in some applications even a varistor. This resistance is applied to
prevent charging of the floating ground to dangerous potentials during normal operation.
Occasionally varistors are used instead of resistors to rapidly discharge CHV, if it is expected that fast transients
might charge CHV to high-potentials.
Note that the PE island represents a copper island on the PCB for the provision of a short, thick Earth wire
connecting this island to PE ground at the entrance of the power supply unit (PSU).
In equipment designs using a chassis, the PE connection is usually provided through the chassis itself. Typically
the PE conductor is tied to the chassis at one end while the high-voltage components, CHV and RHV, are
connecting to the chassis at the other end.


Copyright © 2012–2019, Texas Instruments Incorporated                                                                           Submit Documentation Feedback            23
                                             Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
SN65HVD72, SN65HVD75, SN65HVD78
SLLSE11H – MARCH 2012 – REVISED MARCH 2019                                                                                 www.ti.com


10.2.3 Application Curves




           RL = 60 Ω                                                     RL = 60 Ω

                  Figure 28. SN65HVD72, 250 kbps                                   Figure 29. SN65HVD75, 20 Mbps




                                RL = 60 Ω

                                                   Figure 30. SN65HVD78, 50 Mbps



11 Power Supply Recommendations
To assure reliable operation at all data rates and supply voltages, each supply should be buffered with a 100-nF
ceramic capacitor located as close to the supply pins as possible. The TPS76333 is a linear voltage regulator
suitable for the 3.3 V supply.
See the SN6501 data sheet for isolated power supply designs.




24     Submit Documentation Feedback                                               Copyright © 2012–2019, Texas Instruments Incorporated

                                   Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
                                                                                   SN65HVD72, SN65HVD75, SN65HVD78
www.ti.com                                                                             SLLSE11H – MARCH 2012 – REVISED MARCH 2019


12 Layout

12.1 Layout Guidelines
On-chip IEC ESD protection is sufficient for laboratory and portable equipment but often insufficient for EFT and
surge transients occurring in industrial environments. Therefore, robust and reliable bus node design requires the
use of external transient protection devices.
Because ESD and EFT transients have a wide frequency bandwidth from approximately 3 MHz to 3 GHz, high-
frequency layout techniques must be applied during PCB design.
For a successful PCB design, start with the design of the protection circuit in mind.
1. Place the protection circuitry close to the bus connector to prevent noise transients from entering the board.
2. Use VCC and ground planes to provide low-inductance. Note that high-frequency currents follow the path of
    least inductance and not the path of least impedance.
3. Design the protection components into the direction of the signal path. Do not force the transients currents to
    divert from the signal path to reach the protection device.
4. Apply 100-nF to 220-nF bypass capacitors as close as possible to the VCC pins of transceiver, UART, and
    controller ICs on the board.
5. Use at least two vias for VCC and ground connections of bypass capacitors and protection devices to
    minimize effective via-inductance.
6. Use 1-kΩ to 10-kΩ pullup or pulldown resistors for enable lines to limit noise currents in these lines during
    transient events.
7. Insert pulse-proof series resistors into the A and B bus lines if the TVS clamping voltage is higher than the
    specified maximum voltage of the transceiver bus pins. These resistors limit the residual clamping current
    into the transceiver and prevent it from latching up.
8. While pure TVS protection is sufficient for surge transients up to 1 kV, higher transients require metal-oxide
    varistors (MOVs) which reduce the transients to a few hundred volts of clamping voltage, and transient
    blocking units (TBUs) that limit transient current to 200 mA.

12.2 Layout Example

                                                                               5
                                                                                                           Via to ground
                                                                                   C    4                  Via to VCC
                                                 R



                          6 R
                                                                                    R                            1
                                                                                                                             JMP
 MCU                                                                                7          R
                                                                                    R                      5
                                                                                                               TVS
                          6 R
                                                        SN65HVD7x                         5


                                      Figure 31. SN65HVD7x Half-Duplex Layout Example




Copyright © 2012–2019, Texas Instruments Incorporated                                       Submit Documentation Feedback     25
                                         Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
SN65HVD72, SN65HVD75, SN65HVD78
SLLSE11H – MARCH 2012 – REVISED MARCH 2019                                                                                     www.ti.com


13 Device and Documentation Support

13.1 Device Support

13.1.1 Third-Party Products Disclaimer
TI'S PUBLICATION OF INFORMATION REGARDING THIRD-PARTY PRODUCTS OR SERVICES DOES NOT
CONSTITUTE AN ENDORSEMENT REGARDING THE SUITABILITY OF SUCH PRODUCTS OR SERVICES
OR A WARRANTY, REPRESENTATION OR ENDORSEMENT OF SUCH PRODUCTS OR SERVICES, EITHER
ALONE OR IN COMBINATION WITH ANY TI PRODUCT OR SERVICE.

13.2 Documentation Support

13.2.1 Related Documentation
For related documentation see the following:
    SN6501 Transformer Driver for Isolated Power Supplies, SLLSEA0

13.3 Related Links
The table below lists quick access links. Categories include technical documents, support and community
resources, tools and software, and quick access to sample or buy.

                                                      Table 5. Related Links
                                                                       TECHNICAL                TOOLS &                 SUPPORT &
       PARTS          PRODUCT FOLDER           SAMPLE & BUY
                                                                       DOCUMENTS               SOFTWARE                 COMMUNITY
     SN65HVD72             Click here              Click here             Click here             Click here               Click here
     SN65HVD75             Click here              Click here             Click here             Click here               Click here
     SN65HVD78             Click here              Click here             Click here             Click here               Click here


13.4 Community Resources
The following links connect to TI community resources. Linked contents are provided "AS IS" by the respective
contributors. They do not constitute TI specifications and do not necessarily reflect TI's views; see TI's Terms of
Use.
TI E2E™ Online Community TI's Engineer-to-Engineer (E2E) Community. Created to foster collaboration
           among engineers. At e2e.ti.com, you can ask questions, share knowledge, explore ideas and help
           solve problems with fellow engineers.
Design Support TI's Design Support Quickly find helpful E2E forums along with design support tools and
           contact information for technical support.

13.5 Trademarks
E2E is a trademark of Texas Instruments.
All other trademarks are the property of their respective owners.
13.6 Electrostatic Discharge Caution
        These devices have limited built-in ESD protection. The leads should be shorted together or the device placed in conductive foam
        during storage or handling to prevent electrostatic damage to the MOS gates.


13.7 Glossary
SLYZ022 — TI Glossary.
   This glossary lists and explains terms, acronyms, and definitions.




26     Submit Documentation Feedback                                                   Copyright © 2012–2019, Texas Instruments Incorporated

                                    Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
                                                                                  SN65HVD72, SN65HVD75, SN65HVD78
www.ti.com                                                                           SLLSE11H – MARCH 2012 – REVISED MARCH 2019


14 Mechanical, Packaging, and Orderable Information
The following pages include mechanical, packaging, and orderable information. This information is the most
current data available for the designated devices. This data is subject to change without notice and revision of
this document. For browser-based versions of this data sheet, refer to the left-hand navigation.




Copyright © 2012–2019, Texas Instruments Incorporated                                    Submit Documentation Feedback      27
                                         Product Folder Links: SN65HVD72 SN65HVD75 SN65HVD78
                                                                                                                                PACKAGE OPTION ADDENDUM

  www.ti.com                                                                                                                                                   15-Jul-2026




PACKAGING INFORMATION

 Orderable part number   Status   Material type   Package | Pins    Package qty | Carrier    RoHS      Lead finish/       MSL rating/       Op temp (°C)   Part marking
                           (1)         (2)                                                    (3)      Ball material      Peak reflow                           (6)
                                                                                                            (4)                (5)

      SN65HVD72D         Active    Production       SOIC (D) | 8         75 | TUBE            Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD72
     SN65HVD72D.A        Active    Production       SOIC (D) | 8         75 | TUBE            Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD72
     SN65HVD72D.B        Active    Production       SOIC (D) | 8         75 | TUBE            Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD72
     SN65HVD72DGK        Active    Production     VSSOP (DGK) | 8        80 | TUBE            Yes      NIPDAUAG        Level-1-260C-UNLIM    -40 to 125      HVD72
    SN65HVD72DGK.A       Active    Production     VSSOP (DGK) | 8        80 | TUBE            Yes      NIPDAUAG        Level-1-260C-UNLIM    -40 to 125      HVD72
    SN65HVD72DGK.B       Active    Production     VSSOP (DGK) | 8        80 | TUBE            Yes      NIPDAUAG        Level-1-260C-UNLIM    -40 to 125      HVD72
    SN65HVD72DGKR        Active    Production     VSSOP (DGK) | 8    2500 | LARGE T&R         Yes      NIPDAU | SN     Level-1-260C-UNLIM    -40 to 125      HVD72
                                                                                                       | NIPDAUAG
   SN65HVD72DGKR.A       Active    Production     VSSOP (DGK) | 8    2500 | LARGE T&R         Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD72
   SN65HVD72DGKR.B       Active    Production     VSSOP (DGK) | 8    2500 | LARGE T&R         Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD72
     SN65HVD72DR         Active    Production       SOIC (D) | 8     2500 | LARGE T&R         Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD72
    SN65HVD72DR.A        Active    Production       SOIC (D) | 8     2500 | LARGE T&R         Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD72
    SN65HVD72DR.B        Active    Production       SOIC (D) | 8     2500 | LARGE T&R         Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD72
    SN65HVD72DRBR        Active    Production      SON (DRB) | 8     3000 | LARGE T&R         Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD72
   SN65HVD72DRBR.A       Active    Production      SON (DRB) | 8     3000 | LARGE T&R         Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD72
   SN65HVD72DRBR.B       Active    Production      SON (DRB) | 8     3000 | LARGE T&R         Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD72
    SN65HVD72DRBT        Active    Production      SON (DRB) | 8      250 | SMALL T&R         Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD72
   SN65HVD72DRBT.A       Active    Production      SON (DRB) | 8      250 | SMALL T&R         Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD72
   SN65HVD72DRBT.B       Active    Production      SON (DRB) | 8      250 | SMALL T&R         Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD72
  SN65HVD72DRBTG4        Active    Production      SON (DRB) | 8      250 | SMALL T&R         Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD72
 SN65HVD72DRBTG4.A       Active    Production      SON (DRB) | 8      250 | SMALL T&R         Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD72
 SN65HVD72DRBTG4.B       Active    Production      SON (DRB) | 8      250 | SMALL T&R         Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD72
    SN65HVD72DRG4        Active    Production       SOIC (D) | 8     2500 | LARGE T&R         Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD72
   SN65HVD72DRG4.A       Active    Production       SOIC (D) | 8     2500 | LARGE T&R         Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD72
   SN65HVD72DRG4.B       Active    Production       SOIC (D) | 8     2500 | LARGE T&R         Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD72
      SN65HVD75D         Active    Production       SOIC (D) | 8         75 | TUBE            Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD75
     SN65HVD75D.A        Active    Production       SOIC (D) | 8         75 | TUBE            Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD75
     SN65HVD75D.B        Active    Production       SOIC (D) | 8         75 | TUBE            Yes        NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD75
     SN65HVD75DGK        Active    Production     VSSOP (DGK) | 8        80 | TUBE            Yes      NIPDAUAG        Level-1-260C-UNLIM    -40 to 125      HVD75



                                                                                     Addendum-Page 1
                                                                                                                                  PACKAGE OPTION ADDENDUM

www.ti.com                                                                                                                                                       15-Jul-2026




Orderable part number   Status   Material type   Package | Pins    Package qty | Carrier    RoHS         Lead finish/       MSL rating/       Op temp (°C)   Part marking
                          (1)         (2)                                                    (3)         Ball material      Peak reflow                           (6)
                                                                                                              (4)                (5)

  SN65HVD75DGK.A        Active    Production     VSSOP (DGK) | 8        80 | TUBE            Yes          NIPDAUAG       Level-1-260C-UNLIM    -40 to 125      HVD75
  SN65HVD75DGK.B        Active    Production     VSSOP (DGK) | 8        80 | TUBE            Yes          NIPDAUAG       Level-1-260C-UNLIM    -40 to 125      HVD75
  SN65HVD75DGKR         Active    Production     VSSOP (DGK) | 8    2500 | LARGE T&R         Yes         NIPDAU | SN     Level-1-260C-UNLIM    -40 to 125      HVD75
                                                                                                         | NIPDAUAG
 SN65HVD75DGKR.A        Active    Production     VSSOP (DGK) | 8    2500 | LARGE T&R         Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD75
 SN65HVD75DGKR.B        Active    Production     VSSOP (DGK) | 8    2500 | LARGE T&R         Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD75
   SN65HVD75DR          Active    Production       SOIC (D) | 8     2500 | LARGE T&R         Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD75
  SN65HVD75DR.A         Active    Production       SOIC (D) | 8     2500 | LARGE T&R         Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD75
  SN65HVD75DR.B         Active    Production       SOIC (D) | 8     2500 | LARGE T&R         Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD75
  SN65HVD75DRBR         Active    Production      SON (DRB) | 8     3000 | LARGE T&R         Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD75
 SN65HVD75DRBR.A        Active    Production      SON (DRB) | 8     3000 | LARGE T&R         Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD75
 SN65HVD75DRBR.B        Active    Production      SON (DRB) | 8     3000 | LARGE T&R         Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD75
SN65HVD75DRBRG4         Active    Production      SON (DRB) | 8     3000 | LARGE T&R         Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD75
SN65HVD75DRBRG4.A       Active    Production      SON (DRB) | 8     3000 | LARGE T&R         Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD75
SN65HVD75DRBRG4.B       Active    Production      SON (DRB) | 8     3000 | LARGE T&R         Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD75
  SN65HVD75DRBT         Active    Production      SON (DRB) | 8      250 | SMALL T&R         Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD75
 SN65HVD75DRBT.A        Active    Production      SON (DRB) | 8      250 | SMALL T&R         Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD75
 SN65HVD75DRBT.B        Active    Production      SON (DRB) | 8      250 | SMALL T&R         Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD75
  SN65HVD75DRG4         Active    Production       SOIC (D) | 8     2500 | LARGE T&R         Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD75
 SN65HVD75DRG4.A        Active    Production       SOIC (D) | 8     2500 | LARGE T&R         Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD75
 SN65HVD75DRG4.B        Active    Production       SOIC (D) | 8     2500 | LARGE T&R         Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD75
    SN65HVD78D          Active    Production       SOIC (D) | 8         75 | TUBE            Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD78
   SN65HVD78D.A         Active    Production       SOIC (D) | 8         75 | TUBE            Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD78
   SN65HVD78D.B         Active    Production       SOIC (D) | 8         75 | TUBE            Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD78
   SN65HVD78DGK         Active    Production     VSSOP (DGK) | 8        80 | TUBE            Yes          NIPDAUAG       Level-1-260C-UNLIM    -40 to 125      HVD78
  SN65HVD78DGK.A        Active    Production     VSSOP (DGK) | 8        80 | TUBE            Yes          NIPDAUAG       Level-1-260C-UNLIM    -40 to 125      HVD78
  SN65HVD78DGK.B        Active    Production     VSSOP (DGK) | 8        80 | TUBE            Yes          NIPDAUAG       Level-1-260C-UNLIM    -40 to 125      HVD78
  SN65HVD78DGKR         Active    Production     VSSOP (DGK) | 8    2500 | LARGE T&R         Yes      NIPDAU | NIPDAUAG Level-1-260C-UNLIM     -40 to 125      HVD78
 SN65HVD78DGKR.A        Active    Production     VSSOP (DGK) | 8    2500 | LARGE T&R         Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD78
 SN65HVD78DGKR.B        Active    Production     VSSOP (DGK) | 8    2500 | LARGE T&R         Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD78
   SN65HVD78DR          Active    Production       SOIC (D) | 8     2500 | LARGE T&R         Yes           NIPDAU        Level-1-260C-UNLIM    -40 to 125      HVD78


                                                                                    Addendum-Page 2
                                                                                                                                                                     PACKAGE OPTION ADDENDUM

       www.ti.com                                                                                                                                                                                                    15-Jul-2026




       Orderable part number          Status     Material type      Package | Pins      Package qty | Carrier       RoHS             Lead finish/               MSL rating/          Op temp (°C)               Part marking
                                        (1)            (2)                                                            (3)            Ball material              Peak reflow                                           (6)
                                                                                                                                          (4)                       (5)

          SN65HVD78DR.A               Active      Production            SOIC (D) | 8     2500 | LARGE T&R            Yes               NIPDAU            Level-1-260C-UNLIM            -40 to 125                  HVD78
          SN65HVD78DR.B               Active      Production            SOIC (D) | 8     2500 | LARGE T&R            Yes               NIPDAU            Level-1-260C-UNLIM            -40 to 125                  HVD78
         SN65HVD78DRBR                Active      Production        SON (DRB) | 8        3000 | LARGE T&R            Yes               NIPDAU            Level-1-260C-UNLIM            -40 to 125                  HVD78
        SN65HVD78DRBR.A               Active      Production        SON (DRB) | 8        3000 | LARGE T&R            Yes               NIPDAU            Level-1-260C-UNLIM            -40 to 125                  HVD78
        SN65HVD78DRBR.B               Active      Production        SON (DRB) | 8        3000 | LARGE T&R            Yes               NIPDAU            Level-1-260C-UNLIM            -40 to 125                  HVD78
         SN65HVD78DRBT                Active      Production        SON (DRB) | 8         250 | SMALL T&R            Yes               NIPDAU            Level-1-260C-UNLIM            -40 to 125                  HVD78
        SN65HVD78DRBT.A               Active      Production        SON (DRB) | 8         250 | SMALL T&R            Yes               NIPDAU            Level-1-260C-UNLIM            -40 to 125                  HVD78
        SN65HVD78DRBT.B               Active      Production        SON (DRB) | 8         250 | SMALL T&R            Yes               NIPDAU            Level-1-260C-UNLIM            -40 to 125                  HVD78
        SN65HVD78DRBTG4               Active      Production        SON (DRB) | 8         250 | SMALL T&R            Yes               NIPDAU            Level-1-260C-UNLIM            -40 to 125                  HVD78
       SN65HVD78DRBTG4.A              Active      Production        SON (DRB) | 8         250 | SMALL T&R            Yes               NIPDAU            Level-1-260C-UNLIM            -40 to 125                  HVD78
       SN65HVD78DRBTG4.B              Active      Production        SON (DRB) | 8         250 | SMALL T&R            Yes               NIPDAU            Level-1-260C-UNLIM            -40 to 125                  HVD78
         SN65HVD78DRG4                Active      Production            SOIC (D) | 8     2500 | LARGE T&R            Yes               NIPDAU            Level-1-260C-UNLIM            -40 to 125                  HVD78
        SN65HVD78DRG4.A               Active      Production            SOIC (D) | 8     2500 | LARGE T&R            Yes               NIPDAU            Level-1-260C-UNLIM            -40 to 125                  HVD78
        SN65HVD78DRG4.B               Active      Production            SOIC (D) | 8     2500 | LARGE T&R            Yes               NIPDAU            Level-1-260C-UNLIM            -40 to 125                  HVD78

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


                                                                                                          Addendum-Page 3
                                                                                                                                                                      PACKAGE OPTION ADDENDUM

    www.ti.com                                                                                                                                                                                                    15-Jul-2026




Important Information and Disclaimer:The information provided on this page represents TI's knowledge and belief as of the date that it is provided. TI bases its knowledge and belief on information provided by third parties, and
makes no representation or warranty as to the accuracy of such information. Efforts are underway to better integrate information from third parties. TI has taken and continues to take reasonable steps to provide representative
and accurate information but may not have conducted destructive testing or chemical analysis on incoming materials and chemicals. TI and TI suppliers consider certain information to be proprietary, and thus CAS numbers
and other limited information may not be available for release.

In no event shall TI's liability arising out of such information exceed the total purchase price of the TI part(s) at issue in this document sold by TI to Customer on an annual basis.




                                                                                                          Addendum-Page 4
                                                                              PACKAGE MATERIALS INFORMATION

www.ti.com                                                                                                                                    10-Aug-2026



TAPE AND REEL INFORMATION

       REEL DIMENSIONS                                                                     TAPE DIMENSIONS
                                                                                      K0       P1



                                                                                                                      B0 W
                                        Reel
                                      Diameter
                                                                                   Cavity           A0
                                                               A0   Dimension designed to accommodate the component width
                                                               B0   Dimension designed to accommodate the component length
                                                               K0   Dimension designed to accommodate the component thickness
                                                               W    Overall width of the carrier tape
                                                               P1   Pitch between successive cavity centers


                                       Reel Width (W1)
                              QUADRANT ASSIGNMENTS FOR PIN 1 ORIENTATION IN TAPE

                                                                                                     Sprocket Holes


                                                 Q1       Q2          Q1    Q2

                                                 Q3       Q4          Q3    Q4                  User Direction of Feed



                                                           Pocket Quadrants


*All dimensions are nominal
             Device           Package Package Pins             SPQ        Reel   Reel   A0                  B0         K0     P1     W     Pin1
                               Type Drawing                             Diameter Width (mm)                (mm)       (mm)   (mm)   (mm) Quadrant
                                                                          (mm) W1 (mm)
    SN65HVD72DGKR             VSSOP     DGK           8        2500        330.0        12.4        5.3     3.4       1.4    8.0    12.0    Q1
    SN65HVD72DGKR             VSSOP     DGK           8        2500        330.0        12.4        5.25   3.35       1.25   8.0    12.0    Q1
     SN65HVD72DR               SOIC       D           8        2500        330.0        12.4        6.4     5.2       2.1    8.0    12.0    Q1
    SN65HVD72DRBR              SON      DRB           8        3000        330.0        12.4        3.3     3.3       1.1    8.0    12.0    Q2
    SN65HVD72DRBT              SON      DRB           8         250        180.0        12.4        3.3     3.3       1.1    8.0    12.0    Q2
  SN65HVD72DRBTG4              SON      DRB           8         250        180.0        12.4        3.3     3.3       1.1    8.0    12.0    Q2
    SN65HVD72DRG4              SOIC       D           8        2500        330.0        12.4        6.4     5.2       2.1    8.0    12.0    Q1
    SN65HVD75DGKR             VSSOP     DGK           8        2500        330.0        12.4        5.3     3.4       1.4    8.0    12.0    Q1
    SN65HVD75DGKR             VSSOP     DGK           8        2500        330.0        12.4        5.25   3.35       1.25   8.0    12.0    Q1
     SN65HVD75DR               SOIC       D           8        2500        330.0        12.4        6.4     5.2       2.1    8.0    12.0    Q1
    SN65HVD75DRBR              SON      DRB           8        3000        330.0        12.4        3.3     3.3       1.1    8.0    12.0    Q2
  SN65HVD75DRBRG4              SON      DRB           8        3000        330.0        12.4        3.3     3.3       1.1    8.0    12.0    Q2
    SN65HVD75DRBT              SON      DRB           8         250        180.0        12.4        3.3     3.3       1.1    8.0    12.0    Q2
    SN65HVD75DRG4              SOIC       D           8        2500        330.0        12.4        6.4     5.2       2.1    8.0    12.0    Q1
    SN65HVD78DGKR             VSSOP     DGK           8        2500        330.0        12.4        5.3     3.4       1.4    8.0    12.0    Q1
     SN65HVD78DR               SOIC       D           8        2500        330.0        12.4        6.4     5.2       2.1    8.0    12.0    Q1




                                                                      Pack Materials-Page 1
                                                           PACKAGE MATERIALS INFORMATION

www.ti.com                                                                                                      10-Aug-2026



             Device   Package Package Pins   SPQ       Reel   Reel   A0           B0     K0     P1     W     Pin1
                       Type Drawing                  Diameter Width (mm)         (mm)   (mm)   (mm)   (mm) Quadrant
                                                       (mm) W1 (mm)
    SN65HVD78DRBR      SON     DRB     8     3000      330.0     12.4      3.3   3.3    1.1    8.0    12.0    Q2
    SN65HVD78DRBT      SON     DRB     8     250       180.0     12.4      3.3   3.3    1.1    8.0    12.0    Q2
  SN65HVD78DRBTG4      SON     DRB     8     250       180.0     12.4      3.3   3.3    1.1    8.0    12.0    Q2
    SN65HVD78DRG4      SOIC     D      8     2500      330.0     12.4      6.4   5.2    2.1    8.0    12.0    Q1




                                                   Pack Materials-Page 2
                                                                PACKAGE MATERIALS INFORMATION

www.ti.com                                                                                                              10-Aug-2026



 TAPE AND REEL BOX DIMENSIONS




                                                               Width (mm)
                                                                              H
                      W




                                                          L




*All dimensions are nominal
             Device           Package Type   Package Drawing   Pins         SPQ    Length (mm)   Width (mm)   Height (mm)
    SN65HVD72DGKR               VSSOP             DGK           8           2500      353.0        353.0         32.0
    SN65HVD72DGKR               VSSOP             DGK           8           2500      366.0        364.0         50.0
      SN65HVD72DR                SOIC              D            8           2500      353.0        353.0         32.0
    SN65HVD72DRBR                 SON             DRB           8           3000      346.0        346.0         33.0
    SN65HVD72DRBT                 SON             DRB           8           250       210.0        185.0         35.0
   SN65HVD72DRBTG4                SON             DRB           8           250       210.0        185.0         35.0
    SN65HVD72DRG4                SOIC              D            8           2500      353.0        353.0         32.0
    SN65HVD75DGKR               VSSOP             DGK           8           2500      353.0        353.0         32.0
    SN65HVD75DGKR               VSSOP             DGK           8           2500      366.0        364.0         50.0
      SN65HVD75DR                SOIC              D            8           2500      353.0        353.0         32.0
    SN65HVD75DRBR                 SON             DRB           8           3000      346.0        346.0         33.0
   SN65HVD75DRBRG4                SON             DRB           8           3000      346.0        346.0         33.0
    SN65HVD75DRBT                 SON             DRB           8           250       182.0        182.0         20.0
    SN65HVD75DRG4                SOIC              D            8           2500      353.0        353.0         32.0
    SN65HVD78DGKR               VSSOP             DGK           8           2500      353.0        353.0         32.0
      SN65HVD78DR                SOIC              D            8           2500      353.0        353.0         32.0
    SN65HVD78DRBR                 SON             DRB           8           3000      346.0        346.0         33.0
    SN65HVD78DRBT                 SON             DRB           8           250       210.0        185.0         35.0




                                                        Pack Materials-Page 3
                                                        PACKAGE MATERIALS INFORMATION

www.ti.com                                                                                                   10-Aug-2026



             Device   Package Type   Package Drawing   Pins     SPQ     Length (mm)   Width (mm)   Height (mm)
   SN65HVD78DRBTG4        SON             DRB           8       250        210.0        185.0         35.0
    SN65HVD78DRG4        SOIC              D            8       2500       353.0        353.0         32.0




                                                Pack Materials-Page 4
                                                                 PACKAGE MATERIALS INFORMATION

www.ti.com                                                                                                   10-Aug-2026



TUBE

       T - Tube
        height                                                     L - Tube length


                      W - Tube
                       width


         B - Alignment groove width

*All dimensions are nominal
             Device           Package Name   Package Type   Pins       SPQ     L (mm)   W (mm)   T (µm)   B (mm)
       SN65HVD72D                  D            SOIC         8          75      506.6     8      3940      4.32
     SN65HVD72D.A                  D            SOIC         8          75      506.6     8      3940      4.32
     SN65HVD72D.B                  D            SOIC         8          75      506.6     8      3940      4.32
     SN65HVD72DGK                 DGK          VSSOP         8          80      330      6.55     500      2.88
    SN65HVD72DGK.A                DGK          VSSOP         8          80      330      6.55     500      2.88
    SN65HVD72DGK.B                DGK          VSSOP         8          80      330      6.55     500      2.88
       SN65HVD75D                  D            SOIC         8          75      506.6     8      3940      4.32
     SN65HVD75D.A                  D            SOIC         8          75      506.6     8      3940      4.32
     SN65HVD75D.B                  D            SOIC         8          75      506.6     8      3940      4.32
     SN65HVD75DGK                 DGK          VSSOP         8          80      330      6.55     500      2.88
    SN65HVD75DGK.A                DGK          VSSOP         8          80      330      6.55     500      2.88
    SN65HVD75DGK.B                DGK          VSSOP         8          80      330      6.55     500      2.88
       SN65HVD78D                  D            SOIC         8          75      506.6     8      3940      4.32
     SN65HVD78D.A                  D            SOIC         8          75      506.6     8      3940      4.32
     SN65HVD78D.B                  D            SOIC         8          75      506.6     8      3940      4.32
     SN65HVD78DGK                 DGK          VSSOP         8          80      330      6.55     500      2.88
    SN65HVD78DGK.A                DGK          VSSOP         8          80      330      6.55     500      2.88
    SN65HVD78DGK.B                DGK          VSSOP         8          80      330      6.55     500      2.88




                                                       Pack Materials-Page 5
                                                                                                                  PACKAGE OUTLINE
D0008A                                                           SCALE 2.800
                                                                                                          SOIC - 1.75 mm max height
                                                                                                              SMALL OUTLINE INTEGRATED CIRCUIT



                                                                                                                                        C

                                                                                                                     SEATING PLANE
                                      .228-.244 TYP
                                      [5.80-6.19]
                                                                                                                             .004 [0.1] C
         A                                    PIN 1 ID AREA
                                                                                           6X .050
                                                                                              [1.27]
                                                                               8
                   1




     .189-.197                                                                              2X
     [4.81-5.00]                                                                          .150
       NOTE 3                                                                             [3.81]


                                                                                                               4X (0 -15 )

                   4
                                                                               5
                                                                                           8X .012-.020
                       B                .150-.157                                             [0.31-0.51]
                                                                                                                                    .069 MAX
                                        [3.81-3.98]                                       .010 [0.25]     C A B                      [1.75]
                                          NOTE 4




                                                                                            .005-.010 TYP
                                                                                            [0.13-0.25]


                                        4X (0 -15 )

                       SEE DETAIL A
                                                                                     .010
                                                                                     [0.25]




                                                                                                                                        .004-.010
                                                                                   0 -8                                                 [0.11-0.25]
                                                                                          .016-.050
                                                                                          [0.41-1.27]                        DETAIL A
                                                                                                            (.041)           TYPICAL
                                                                                                            [1.04]

                                                                                                                                     4214825/C 02/2019

NOTES:

1. Linear dimensions are in inches [millimeters]. Dimensions in parenthesis are for reference only. Controlling dimensions are in inches.
   Dimensioning and tolerancing per ASME Y14.5M.
2. This drawing is subject to change without notice.
3. This dimension does not include mold flash, protrusions, or gate burrs. Mold flash, protrusions, or gate burrs shall not
   exceed .006 [0.15] per side.
4. This dimension does not include interlead flash.
5. Reference JEDEC registration MS-012, variation AA.




                                                                        www.ti.com
                                                                              EXAMPLE BOARD LAYOUT
D0008A                                                                                  SOIC - 1.75 mm max height
                                                                                           SMALL OUTLINE INTEGRATED CIRCUIT




                                8X (.061 )
                                    [1.55]
                                                               SYMM                        SEE
                                                                                           DETAILS
                                             1
                                                                                       8

                             8X (.024)
                                 [0.6]                                                      SYMM



                                                                                             (R.002 ) TYP
                                                                                               [0.05]
                                                                                       5
                                             4
                         6X (.050 )
                             [1.27]
                                                               (.213)
                                                                [5.4]

                                                   LAND PATTERN EXAMPLE
                                                     EXPOSED METAL SHOWN
                                                           SCALE:8X




                                                 SOLDER MASK            SOLDER MASK
                     METAL                                                                                  METAL UNDER
                                                 OPENING                    OPENING                         SOLDER MASK


           EXPOSED
             METAL                                                      EXPOSED
                                                                          METAL
                                      .0028 MAX                                              .0028 MIN
                                      [0.07]                                                 [0.07]
                                      ALL AROUND                                             ALL AROUND

                           NON SOLDER MASK                                                 SOLDER MASK
                               DEFINED                                                       DEFINED


                                                      SOLDER MASK DETAILS




                                                                                                               4214825/C 02/2019

NOTES: (continued)

6. Publication IPC-7351 may have alternate designs.
7. Solder mask tolerances between and around signal pads can vary based on board fabrication site.




                                                                www.ti.com
                                                                              EXAMPLE STENCIL DESIGN
D0008A                                                                                   SOIC - 1.75 mm max height
                                                                                            SMALL OUTLINE INTEGRATED CIRCUIT




                                   8X (.061 )
                                       [1.55]                       SYMM

                                                 1
                                                                                             8

                                 8X (.024)
                                     [0.6]                                                       SYMM




                                                                                                   (R.002 ) TYP
                                                                                             5       [0.05]
                                                 4
                             6X (.050 )
                                 [1.27]
                                                                    (.213)
                                                                     [5.4]


                                                       SOLDER PASTE EXAMPLE
                                                BASED ON .005 INCH [0.125 MM] THICK STENCIL
                                                                 SCALE:8X




                                                                                                                  4214825/C 02/2019

NOTES: (continued)

8. Laser cutting apertures with trapezoidal walls and rounded corners may offer better paste release. IPC-7525 may have alternate
   design recommendations.
9. Board assembly site may have different recommendations for stencil design.




                                                                 www.ti.com
                                                                                                        PACKAGE OUTLINE
DGK0008A                                                 SCALE 4.000
                                                                                                VSSOP - 1.1 mm max height
                                                                                                                 SMALL OUTLINE PACKAGE




                                                                                                                   C
                                          5.05
                                               TYP
          A                               4.75
                                                                                                               0.1 C
                                               PIN 1 INDEX AREA
                                                                                                                                      SEATING
                                                                                                                                      PLANE
                                                                                         6X 0.65
                                                                              8
                1


                                                                                            2X
        3.1
                                                                                           1.95
        2.9
       NOTE 3


                4
                                                                              5                 0.38
                                                                                           8X
                                                                                                0.25
                                            3.1                                                  0.13   C A B
                     B
                                            2.9
                                           NOTE 4




                                                                                         0.23
                                                                                         0.13




                                          SEE DETAIL A
                                                                                                   0.25
                                                                                                   GAGE PLANE

                                                                                                                                        1.1 MAX




                                                                                                         0.7                              0.15
                                                                                  0 -8                   0.4                              0.05
                                                                                                                   DETAIL A
                                                                                                                         A 20




                                                                                                                       TYPICAL

                                                                                                                                4214862/A 04/2023
                                                                                                PowerPAD is a trademark of Texas Instruments.
NOTES:

1. All linear dimensions are in millimeters. Any dimensions in parenthesis are for reference only. Dimensioning and tolerancing
   per ASME Y14.5M.
2. This drawing is subject to change without notice.
3. This dimension does not include mold flash, protrusions, or gate burrs. Mold flash, protrusions, or gate burrs shall not
   exceed 0.15 mm per side.
4. This dimension does not include interlead flash. Interlead flash shall not exceed 0.25 mm per side.
5. Reference JEDEC registration MO-187.




                                                                       www.ti.com
                                                                                          EXAMPLE BOARD LAYOUT
                                                                                             TM
DGK0008A                                                                                          VSSOP - 1.1 mm max height
                                                                                                                  SMALL OUTLINE PACKAGE




                                                                            SYMM
                                        8X (1.4)                                                                    (R0.05) TYP



                    8X (0.45)    1                                                                          8



                                                                                                                 SYMM



                       6X (0.65)
                                                                                                            5
                                   4


                                                                                                                SEE DETAILS

                                                                            (4.4)

                                                       LAND PATTERN EXAMPLE
                                                          EXPOSED METAL SHOWN
                                                               SCALE: 15X




                   SOLDER MASK                                                      METAL UNDER                   SOLDER MASK
                                                      METAL
                       OPENING                                                      SOLDER MASK                   OPENING


          EXPOSED METAL                                                                                                  EXPOSED METAL

                                        0.05 MAX                                                        0.05 MIN
                                        ALL AROUND                                                      ALL AROUND

                                NON-SOLDER MASK                                                    SOLDER MASK
                                    DEFINED                                                          DEFINED
                                  (PREFERRED)
                                                           SOLDER MASK DETAILS
                                                                   15.000




                                                                                                                            4214862/A 04/2023
NOTES: (continued)

 6. Publication IPC-7351 may have alternate designs.
 7. Solder mask tolerances between and around signal pads can vary based on board fabrication site.
 8. Vias are optional depending on application, refer to device data sheet. If any vias are implemented, refer to their locations shown
    on this view. It is recommended that vias under paste be filled, plugged or tented.
 9. Size of metal pad may vary due to creepage requirement.




                                                                             www.ti.com
                                                                              EXAMPLE STENCIL DESIGN
                                                                                     TM
DGK0008A                                                                                  VSSOP - 1.1 mm max height
                                                                                                         SMALL OUTLINE PACKAGE




                                                                SYMM

                                        8X (1.4)                                                            (R0.05) TYP


                     8X (0.45)      1                                                                8



                                                                                                         SYMM



                        6X (0.65)
                                                                                                     5
                                    4




                                                                 (4.4)



                                                   SOLDER PASTE EXAMPLE
                                                              SCALE: 15X




                                                                                                                  4214862/A 04/2023
NOTES: (continued)

11. Laser cutting apertures with trapezoidal walls and rounded corners may offer better paste release. IPC-7525 may have alternate
    design recommendations.
12. Board assembly site may have different recommendations for stencil design.




                                                                 www.ti.com
                                                                                                                  PACKAGE OUTLINE
DRB0008B                                                               SCALE 4.000
                                                                                                              VSON - 1 mm max height
                                                                                                                  PLASTIC SMALL OUTLINE - NO LEAD




                                                      3.1                                B
                                 A
                                                      2.9




             PIN 1 INDEX AREA
                                                                                         3.1
                                                                                         2.9




                                                                                                     C
                        1 MAX

                                                                                                          SEATING PLANE
                          0.05
                          0.00                                                                           0.08 C




                      EXPOSED                     1.65 0.05                                                                      (0.2) TYP
                   THERMAL PAD


                                     4                                               5



                           2X
                          1.95                                                           2.4 0.05




                                                                                     8
                                     1
                     6X 0.65                                                                        0.35
                                                                                               8X
                                                                                                    0.25
                             PIN 1 ID                            0.5                                  0.1    C A B
                          (OPTIONAL)                        8X
                                                                 0.3                                  0.05    C



                                                                                                                                 4218876/A 12/2017

NOTES:

1. All linear dimensions are in millimeters. Any dimensions in parenthesis are for reference only. Dimensioning and tolerancing
   per ASME Y14.5M.
2. This drawing is subject to change without notice.
3. The package thermal pad must be soldered to the printed circuit board for thermal and mechanical performance.




                                                                       www.ti.com
                                                                                       EXAMPLE BOARD LAYOUT
DRB0008B                                                                                             VSON - 1 mm max height
                                                                                                         PLASTIC SMALL OUTLINE - NO LEAD




                                                                    (1.65)

                              8X (0.6)                              SYMM

                                         1
                                                                                                     8


                           8X (0.3)


                                                                                                                  (2.4)


                                                                                                         (0.95)
                             6X (0.65)
                                         4
                                                                                                    5
                       (R0.05) TYP
                                                                        (0.575)
                               ( 0.2) VIA
                               TYP                                   (2.8)


                                                      LAND PATTERN EXAMPLE
                                                                  SCALE:20X




                                             0.07 MAX                                                     0.07 MIN
                                             ALL AROUND                                                   ALL AROUND




                 SOLDER MASK                        METAL                      METAL UNDER                         SOLDER MASK
                 OPENING                                                       SOLDER MASK                         OPENING
                                 NON SOLDER MASK
                                                                                                  SOLDER MASK
                                     DEFINED
                                                                                                    DEFINED
                                   (PREFERRED)

                                                           SOLDER MASK DETAILS



                                                                                                                            4218876/A 12/2017

NOTES: (continued)

4. This package is designed to be soldered to a thermal pad on the board. For more information, see Texas Instruments literature
   number SLUA271 (www.ti.com/lit/slua271).
5. Vias are optional depending on application, refer to device data sheet. If any vias are implemented, refer to their locations shown
   on this view. It is recommended that vias under paste be filled, plugged or tented.




                                                                       www.ti.com
                                                                               EXAMPLE STENCIL DESIGN
DRB0008B                                                                                     VSON - 1 mm max height
                                                                                               PLASTIC SMALL OUTLINE - NO LEAD




                                                                 SYMM                METAL
                        8X (0.6)
                                                                                     TYP
                                   1

                        8X (0.3)                                                                     8




                                                                                                         (0.63)
                          SYMM




                      6X (0.65)                                                                             (1.06)


                                                                                                     5
                                   4

                 (R0.05) TYP
                                                                 (1.47)

                                                                  (2.8)


                                                    SOLDER PASTE EXAMPLE
                                                  BASED ON 0.125 mm THICK STENCIL

                                                           EXPOSED PAD
                                               81% PRINTED SOLDER COVERAGE BY AREA
                                                             SCALE:25X




                                                                                                                     4218876/A 12/2017

NOTES: (continued)

6. Laser cutting apertures with trapezoidal walls and rounded corners may offer better paste release. IPC-7525 may have alternate
   design recommendations.




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
