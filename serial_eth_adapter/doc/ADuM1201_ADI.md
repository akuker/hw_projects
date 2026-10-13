# ADuM1201_ADI

_Text extraction of `ADuM1201_ADI.pdf` (pdftotext -layout). Tables/pinouts/figures may lose fidelity; the PDF is authoritative._

```text
                                                                                                            Dual-Channel Digital Isolators
Data Sheet                                                                                                         ADuM1200/ADuM1201
FEATURES                                                                                                    The typical optocoupler concerns regarding uncertain current
Narrow body, RoHS-compliant, SOIC 8-lead package                                                            transfer ratios, nonlinear transfer functions, and temperature and
Low power operation                                                                                         lifetime effects are eliminated with the simple iCoupler digital
   5 V operation                                                                                            interfaces and stable performance characteristics. The need for
      1.1 mA per channel maximum at 0 Mbps to 2 Mbps                                                        external drivers and other discrete components is eliminated
      3.7 mA per channel maximum at 10 Mbps                                                                 with these iCoupler products. Furthermore, iCoupler devices
      8.2 mA per channel maximum at 25 Mbps                                                                 consume one-tenth to one-sixth the power of optocouplers at
   3 V operation                                                                                            comparable signal data rates.
      0.8 mA per channel maximum at 0 Mbps to 2 Mbps                                                        The ADuM1200/ADuM1201 isolators provide two independent
      2.2 mA per channel maximum at 10 Mbps                                                                 isolation channels in a variety of channel configurations and
      4.8 mA per channel maximum at 25 Mbps                                                                 data rates (see the Ordering Guide). Both devices operate with
Bidirectional communication                                                                                 the supply voltage on either side ranging from 2.7 V to 5.5 V,
3 V/5 V level translation                                                                                   providing compatibility with lower voltage systems as well as
High temperature operation: 125°C                                                                           enabling a voltage translation functionality across the isolation
High data rate: dc to 25 Mbps (NRZ)                                                                         barrier. In addition, the ADuM1200/ADuM1201 provide low
Precise timing characteristics                                                                              pulse width distortion (<3 ns for CR grade) and tight channel-
   3 ns maximum pulse width distortion                                                                      to-channel matching (<3 ns for CR grade). Unlike other
   3 ns maximum channel-to-channel matching                                                                 optocoupler alternatives, the ADuM1200/ADuM1201 isolators
High common-mode transient immunity: >25 kV/μs                                                              have a patented refresh feature that ensures dc correctness in
Safety and regulatory approvals                                                                             the absence of input logic transitions and during power-
   UL recognition                                                                                           up/power-down conditions.
      2500 V rms for 1 minute per UL 1577
                                                                                                            The ADuM1200W and ADuM1201W are automotive grade
   CSA Component Acceptance Notice 5A
                                                                                                            versions qualified for 125°C operation. See the Automotive
   VDE Certificate of Conformity
                                                                                                            Products section for more information.
      DIN V VDE V 0884-10 (VDE V 0884-10): 2006-12
      VIORM = 560 V peak                                                                                                FUNCTIONAL BLOCK DIAGRAMS
Qualified for automotive applications
                                                                                                                    VDD1 1                                      8   VDD2
APPLICATIONS
                                                                                                                     VIA 2       ENCODE           DECODE        7   VOA
Size-critical multichannel isolation
SPI interface/data converter isolation                                                                               VIB 3       ENCODE           DECODE        6   VOB

RS-232/RS-422/RS-485 transceiver isolation


                                                                                                                                                                           04642-001
                                                                                                                   GND1 4                                       5   GND2
Digital field bus isolation
Hybrid electric vehicles, battery monitor, and motor drive                                                               Figure 1. ADuM1200 Functional Block Diagram

GENERAL DESCRIPTION                                                                                                 VDD1 1                                      8   VDD2
The ADuM1200/ADuM12011 are dual-channel digital isolators
                                                                                                                     VOA 2       DECODE           ENCODE        7   VIA
based on the Analog Devices, Inc., iCoupler® technology.
Combining high speed CMOS and monolithic transformer                                                                 VIB 3       ENCODE           DECODE        6   VOB
technologies, these isolation components provide outstanding
                                                                                                                                                                           04642-002




                                                                                                                   GND1 4                                       5   GND2
performance characteristics superior to alternatives, such as
optocouplers.                                                                                                            Figure 2. ADuM1201 Functional Block Diagram
By avoiding the use of LEDs and photodiodes, iCoupler devices
remove the design difficulties commonly associated with opto-
couplers.
1
    Protected by U.S. Patents 5,952,849; 6,873,065; 6,903,578; and 7,075,329.


Rev. K                                                                     Document Feedback
Information furnished by Analog Devices is believed to be accurate and reliable. However, no
responsibility is assumed by Analog Devices for its use, nor for any infringements of patents or other
rights of third parties that may result from its use. Specifications subject to change without notice. No   One Technology Way, P.O. Box 9106, Norwood, MA 02062-9106, U.S.A.
license is granted by implication or otherwise under any patent or patent rights of Analog Devices.         Tel: 781.329.4700 ©2004–2016 Analog Devices, Inc. All rights reserved.
Trademarks and registered trademarks are the property of their respective owners.                           Technical Support                                  www.analog.com
ADuM1200/ADuM1201                                                                                                                                                                            Data Sheet

TABLE OF CONTENTS
Features .............................................................................................. 1                 Insulation and Safety-Related Specifications .......................... 19
Applications ....................................................................................... 1                    DIN V VDE V 0884-10 (VDE V 0884-10): 2006-12
General Description ......................................................................... 1                           Insulation Characteristics ......................................................... 20

Functional Block Diagrams ............................................................. 1                                 Recommended Operating Conditions .................................... 20

Revision History ............................................................................... 3                     Absolute Maximum Ratings ......................................................... 21

Specifications..................................................................................... 4                     ESD Caution................................................................................ 21

   Electrical Characteristics—5 V, 105°C Operation ................... 4                                               Pin Configurations and Function Descriptions ......................... 22

   Electrical Characteristics—3 V, 105°C Operation ................... 6                                               Typical Performance Characteristics ........................................... 23

   Electrical Characteristics—Mixed 5 V/3 V or 3 V/5 V, 105°C                                                          Applications Information .............................................................. 24
   Operation....................................................................................... 8                     PCB Layout ................................................................................. 24
   Electrical Characteristics—5 V, 125°C Operation ................. 11                                                   Propagation Delay-Related Parameters................................... 24
   Electrical Characteristics—3 V, 125°C Operation ................. 13                                                   DC Correctness and Magnetic Field Immunity........................... 24
   Electrical Characteristics—Mixed 5 V/3 V, 125°C Operation                                                              Power Consumption .................................................................. 25
   ....................................................................................................... 15             Insulation Lifetime ..................................................................... 25
   Electrical Characteristics—Mixed 3 V/5 V, 125°C Operation                                                           Outline Dimensions ....................................................................... 27
   ....................................................................................................... 17
                                                                                                                          Ordering Guide .......................................................................... 27
   Package Characteristics ............................................................. 19
                                                                                                                          Automotive Products ................................................................. 28
   Regulatory Information ............................................................. 19




                                                                                                       Rev. K | Page 2 of 28
Data Sheet                                                                                                                                                    ADuM1200/ADuM1201
REVISION HISTORY
9/2016—Rev. J to Rev. K                                                                                          8/2007—Rev. C to Rev. D
Changes to Endnote 1 and Endnote 2, Table 9............................19                                        Updated VDE Certification Throughout....................................... 1
                                                                                                                 Changes to Features, Note 1, Figure 1, and Figure 2 .................... 1
5/2015—Rev. I to Rev. J                                                                                          Changes to Table 3 ............................................................................ 7
Changes to Table 9 ..........................................................................19                  Changes to Regulatory Information Section ............................... 10
Change to Tracking Resistance (Comparative Tracking Index)                                                       Added Table 10 ................................................................................ 12
Parameter and Isolation Group Parameter, Table 10..................20                                            Added Insulation Lifetime Section ............................................... 16
                                                                                                                 Updated Outline Dimensions........................................................ 18
3/2012—Rev. H to Rev. I                                                                                          Changes to Ordering Guide ........................................................... 18
Created Hyperlink for Safety and Regulatory Approvals
Entry in Features Section ................................................................. 1                    2/2006—Rev. B to Rev. C
Change to General Description Section ......................................... 1                                Updated Format ................................................................. Universal
Change to PCB Layout Section .....................................................24                             Added Note 1 ..................................................................................... 1
Moved Automotive Products Section ...........................................28                                  Changes to Absolute Maximum Ratings...................................... 12
                                                                                                                 Changes to DC Correctness and Magnetic Field
1/2009—Rev. G to Rev. H                                                                                          Immunity Section............................................................................ 15
Changes to Table 5, Switching Specifications Parameter ...........13
Changes to Table 6, Switching Specifications Parameter ...........15                                             9/2004—Rev. A to Rev. B
Changes to Table 7, Switching Specifications Parameter ...........17                                             Changes to Table 5 .......................................................................... 10

9/2008—Rev. F to Rev. G                                                                                          6/2004—Rev. 0 to Rev. A
Changes to Table 9 ..........................................................................19                  Changes to Format ............................................................. Universal
Changes to Table 13 ........................................................................21                   Changes to General Description ..................................................... 1
Changes to Ordering Guide ...........................................................27                          Changes to Electrical Characteristics—5 V Operation................ 3
                                                                                                                 Changes to Electrical Characteristics—3 V Operation................ 5
3/2008—Rev. E to Rev. F                                                                                          Changes to Electrical Characteristics—Mixed 5 V/3 V or
Changes to Features Section ............................................................ 1                       3 V/5 V Operation ............................................................................ 7
Changes to Applications Section ..................................................... 1
Added Table 4 ..................................................................................11               4/2004—Revision 0: Initial Version
Added Table 5 ..................................................................................13
Added Table 6 ..................................................................................15
Added Table 7 ..................................................................................17
Changes to Table 12 ........................................................................20
Changes to Table 13 ........................................................................21
Added Automotive Products Section ...........................................26
Changes to Ordering Guide ...........................................................27

11/2007—Rev. D to Rev. E
Changes to Note 1 ............................................................................. 1
Added ADuM1200/ADuM1201AR Change vs. Temperature
Parameter ........................................................................................... 3
Added ADuM1200/ADuM1201AR Change vs. Temperature
Parameter ........................................................................................... 5
Added ADuM1200/ADuM1201AR Change vs. Temperature
Parameter ........................................................................................... 8




                                                                                                 Rev. K | Page 3 of 28
ADuM1200/ADuM1201                                                                                                                         Data Sheet

SPECIFICATIONS
ELECTRICAL CHARACTERISTICS—5 V, 105°C OPERATION
All voltages are relative to the respective ground; 4.5 V ≤ VDD1 ≤ 5.5 V, 4.5 V ≤ VDD2 ≤ 5.5 V; all minimum/maximum specifications apply
over the entire recommended operating range, unless otherwise noted; all typical specifications are at TA = 25°C, VDD1 = VDD2 = 5 V; this
does not apply to the ADuM1200W and ADuM1201W automotive grade products.

Table 1.
Parameter                                         Symbol          Min                      Typ     Max                  Unit    Test Conditions/Comments
DC SPECIFICATIONS
  Input Supply Current per Channel, Quiescent     IDDI (Q)                                 0.50    0.60                 mA
  Output Supply Current per Channel, Quiescent    IDDO (Q)                                 0.19    0.25                 mA
  ADuM1200 Total Supply Current, Two Channels 1
     DC to 2 Mbps
        VDD1 Supply Current                       IDD1 (Q)                                 1.1     1.4                  mA      DC to 1 MHz logic signal freq.
        VDD2 Supply Current                       IDD2 (Q)                                 0.5     0.8                  mA      DC to 1 MHz logic signal freq.
     10 Mbps (BR and CR Grades Only)
        VDD1 Supply Current                       IDD1 (10)                                4.3     5.5                  mA      5 MHz logic signal freq.
        VDD2 Supply Current                       IDD2 (10)                                1.3     2.0                  mA      5 MHz logic signal freq.
     25 Mbps (CR Grade Only)
        VDD1 Supply Current                       IDD1 (25)                                10      13                   mA      12.5 MHz logic signal freq.
        VDD2 Supply Current                       IDD2 (25)                                2.8     3.4                  mA      12.5 MHz logic signal freq.
  ADuM1201 Total Supply Current, Two Channels1
     DC to 2 Mbps
        VDD1 Supply Current                       IDD1 (Q)                                 0.8     1.1                  mA      DC to 1 MHz logic signal freq.
        VDD2 Supply Current                       IDD2 (Q)                                 0.8     1.1                  mA      DC to 1 MHz logic signal freq.
     10 Mbps (BR and CR Grades Only)
        VDD1 Supply Current                       IDD1 (10)                                2.8     3.5                  mA      5 MHz logic signal freq.
        VDD2 Supply Current                       IDD2 (10)                                2.8     3.5                  mA      5 MHz logic signal freq.
     25 Mbps (CR Grade Only)
        VDD1 Supply Current                       IDD1 (25)                                6.3     8.0                  mA      12.5 MHz logic signal freq.
        VDD2 Supply Current                       IDD2 (25)                                6.3     8.0                  mA      12.5 MHz logic signal freq.
  For All Models
     Input Currents                               IIA, IIB        −10                      +0.01   +10                  µA      0 V ≤ VIA, VIB ≤ (VDD1 or VDD2)
     Logic High Input Threshold                   VIH             0.7 (VDD1 or VDD2)                                    V
     Logic Low Input Threshold                    VIL                                              0.3 (VDD1 or VDD2)   V
     Logic High Output Voltages                   VOAH, VOBH      (VDD1 or VDD2) − 0.1     5.0                          V       IOx = −20 µA, VIx = VIxH
                                                                  (VDD1 or VDD2) − 0.5     4.8                          V       IOx = −4 mA, VIx = VIxH
     Logic Low Output Voltages                    VOAL, VOBL                               0.0     0.1                  V       IOx = 20 µA, VIx = VIxL
                                                                                           0.04    0.1                  V       IOx = 400 µA, VIx = VIxL
                                                                                           0.2     0.4                  V       IOx = 4 mA, VIx = VIxL
SWITCHING SPECIFICATIONS
  ADuM1200/ADuM1201AR                                                                                                           CL = 15 pF, CMOS signal levels
    Minimum Pulse Width 2                         PW                                               1000                 ns
    Maximum Data Rate 3                                           1                                                     Mbps
    Propagation Delay 4                           tPHL, tPLH      50                               150                  ns
    Pulse Width Distortion, |tPLH − tPHL|4        PWD                                              40                   ns
      Change vs. Temperature                                                               11                           ps/°C
    Propagation Delay Skew 5                      tPSK                                             100                  ns
    Channel-to-Channel Matching 6                 tPSKCD/tPSKOD                                    50                   ns
    Output Rise/Fall Time (10% to 90%)            tR/tF                                    10                           ns




                                                                   Rev. K | Page 4 of 28
Data Sheet                                                                                                                        ADuM1200/ADuM1201
Parameter                                                  Symbol          Min                       Typ      Max                  Unit       Test Conditions/Comments
  ADuM1200/ADuM1201BR
    Minimum Pulse Width2                                   PW                                                 100                  ns
      Maximum Data Rate3                                                   10                                                      Mbps
      Propagation Delay4                                   tPHL, tPLH      20                                 50                   ns
      Pulse Width Distortion, |tPLH − tPHL|4               PWD                                                3                    ns
        Change vs. Temperature                                                                       5                             ps/°C
      Propagation Delay Skew5                              tPSK                                               15                   ns
      Channel-to-Channel Matching                                                                             3
        Codirectional Channels6                            tPSKCD                                                                  ns
        Opposing Directional Channels6                     tPSKOD                                             15                   ns
      Output Rise/Fall Time (10% to 90%)                   tR/tF                                     2.5                           ns
    ADuM1200/ADuM1201CR
      Minimum Pulse Width2                                 PW                                        20       40                   ns
      Maximum Data Rate      3                                             25                        50                            Mbps
      Propagation Delay4                                   tPHL, tPLH      20                                 45                   ns
      Pulse Width Distortion, |tPLH − tPHL|4               PWD                                                3                    ns
        Change vs. Temperature                                                                       5                             ps/°C
      Propagation Delay Skew5                              tPSK                                               15                   ns
      Channel-to-Channel Matching                                                                             3                    ns
        Codirectional Channels6                            tPSKCD
         Opposing Directional Channels6                    tPSKOD                                             15                   ns
      Output Rise/Fall Time (10% to 90%)                   tR/tF                                     2.5                           ns
    For All Models
      Common-Mode Transient Immunity
         Logic High Output 7                               |CMH|           25                        35                            kV/µs      VIx = VDD1 or VDD2, VCM =
                                                                                                                                              1000 V, transient
                                                                                                                                              magnitude = 800 V
         Logic Low Output7                                 |CML|           25                        35                            kV/µs      VIx = 0 V, VCM = 1000 V,
                                                                                                                                              transient magnitude = 800 V
      Refresh Rate                                         fr                                        1.2                           Mbps
      Dynamic Supply Current per Channel 8
        Input                                              IDDI (D)                                  0.19                          mA/
                                                                                                                                   Mbps
         Output                                            IDDO (D)                                  0.05                          mA/
                                                                                                                                   Mbps
1
  The supply current values are for both channels combined when running at identical data rates. Output supply current values are specified with no output load
  present. The supply current associated with an individual channel operating at a given data rate can be calculated as described in the Power Consumption section. See
  Figure 6 through Figure 8 for information on per-channel supply current as a function of data rate for unloaded and loaded conditions. See Figure 9 through Figure 11
  for total VDD1 and VDD2 supply currents as a function of data rate for ADuM1200 and ADuM1201 channel configurations.
2
  The minimum pulse width is the shortest pulse width at which the specified pulse width distortion is guaranteed.
3
  The maximum data rate is the fastest data rate at which the specified pulse width distortion is guaranteed.
4
  tPHL propagation delay is measured from the 50% level of the falling edge of the VIx signal to the 50% level of the falling edge of the VOx signal. tPLH propagation delay is
  measured from the 50% level of the rising edge of the VIx signal to the 50% level of the rising edge of the VOx signal.
5
  tPSK is the magnitude of the worst-case difference in tPHL and/or tPLH that is measured between units at the same operating temperature, supply voltages, and output
  load within the recommended operating conditions.
6
  Codirectional channel-to-channel matching is the absolute value of the difference in propagation delays between any two channels with inputs on the same side of
  the isolation barrier. Opposing directional channel-to-channel matching is the absolute value of the difference in propagation delays between any two channels with
  inputs on opposing sides of the isolation barrier.
7
  CMH is the maximum common-mode voltage slew rate that can be sustained while maintaining VO > 0.8 VDD2. CML is the maximum common-mode voltage slew rate
  that can be sustained while maintaining VO < 0.8 V. The common-mode voltage slew rates apply to both rising and falling common-mode voltage edges. The transient
  magnitude is the range over which the common mode is slewed.
8
  Dynamic supply current is the incremental amount of supply current required for a 1 Mbps increase in the signal data rate. See Figure 6 through Figure 8 for
  information on per-channel supply current as a function of data rate for unloaded and loaded conditions. See the Power Consumption section for guidance on
  calculating per-channel supply current for a given data rate.




                                                                             Rev. K | Page 5 of 28
ADuM1200/ADuM1201                                                                                                                       Data Sheet
ELECTRICAL CHARACTERISTICS—3 V, 105°C OPERATION
All voltages are relative to the respective ground; 2.7 V ≤ VDD1 ≤ 3.6 V, 2.7 V ≤ VDD2 ≤ 3.6 V; all minimum/maximum specifications apply
over the entire recommended operating range, unless otherwise noted; all typical specifications are at TA = 25°C, VDD1 = VDD2 = 3.0 V; this
does not apply to ADuM1200W and ADuM1201W automotive grade products.

Table 2.
Parameter                                        Symbol          Min                     Typ     Max                  Unit    Test Conditions/Comments
DC SPECIFICATIONS
  Input Supply Current per Channel, Quiescent    IDDI (Q)                                0.26    0.35                 mA
  Output Supply Current per Channel, Quiescent   IDDO (Q)                                0.11    0.20                 mA
  ADuM1200 Total Supply Current, Two
  Channels1
     DC to 2 Mbps
        VDD1 Supply Current                      IDD1 (Q)                                0.6     1.0                  mA      DC to 1 MHz logic signal freq.
        VDD2 Supply Current                      IDD2 (Q)                                0.2     0.6                  mA      DC to 1 MHz logic signal freq.
     10 Mbps (BR and CR Grades Only)
        VDD1 Supply Current                      IDD1 (10)                               2.2     3.4                  mA      5 MHz logic signal freq.
        VDD2 Supply Current                      IDD2 (10)                               0.7     1.1                  mA      5 MHz logic signal freq.
     25 Mbps (CR Grade Only)
        VDD1 Supply Current                      IDD1 (25)                               5.2     7.7                  mA      12.5 MHz logic signal freq.
        VDD2 Supply Current                      IDD2 (25)                               1.5     2.0                  mA      12.5 MHz logic signal freq.
  ADuM1201 Total Supply Current, Two
     Channels1
     DC to 2 Mbps
        VDD1 Supply Current                      IDD1 (Q)                                0.4     0.8                  mA      DC to 1 MHz logic signal freq.
        VDD2 Supply Current                      IDD2 (Q)                                0.4     0.8                  mA      DC to 1 MHz logic signal freq.
     10 Mbps (BR and CR Grades Only)
        VDD1 Supply Current                      IDD1 (10)                               1.5     2.2                  mA      5 MHz logic signal freq.
        VDD2 Supply Current                      IDD2 (10)                               1.5     2.2                  mA      5 MHz logic signal freq.
     25 Mbps (CR Grade Only)
        VDD1 Supply Current                      IDD1 (25)                               3.4     4.8                  mA      12.5 MHz logic signal freq.
        VDD2 Supply Current                      IDD2 (25)                               3.4     4.8                  mA      12.5 MHz logic signal freq.
  For All Models
     Input Currents                              IIA, IIB        −10                     +0.01   +10                  µA      0 V ≤ VIA, VIB ≤ (VDD1 or VDD2)
     Logic High Input Threshold                  VIH             0.7 (VDD1 or VDD2)                                   V
     Logic Low Input Threshold                   VIL                                             0.3 (VDD1 or VDD2)
     Logic High Output Voltages                  VOAH, VOBH      (VDD1 or VDD2) − 0.1    3.0                          V       IOx = −20 µA, VIx = VIxH
                                                                 (VDD1 or VDD2) − 0.5    2.8                          V       IOx = −4 mA, VIx = VIxH
     Logic Low Output Voltages                   VOAL, VOBL                              0.0     0.1                  V       IOx = 20 µA, VIx = VIxL
                                                                                         0.04    0.1                  V       IOx = 400 µA, VIx = VIxL
                                                                                         0.2     0.4                  V       IOx = 4 mA, VIx = VIxL
SWITCHING SPECIFICATIONS
  ADuM1200/ADuM1201AR                                                                                                         CL = 15 pF, CMOS signal levels
    Minimum Pulse Width 2                        PW                                              1000                 ns
    Maximum Data Rate 3                                          1                                                    Mbps
    Propagation Delay 4                          tPHL, tPLH      50                              150                  ns
    Pulse Width Distortion, |tPLH − tPHL|4       PWD                                             40                   ns
      Change vs. Temperature                                                             11                           ps/°C
    Propagation Delay Skew 5                     tPSK                                            100                  ns
    Channel-to-Channel Matching 6                tPSKCD/tPSKOD                                   50                   ns
    Output Rise/Fall Time (10% to 90%)           tR/tF                                   10                           ns




                                                                      Rev. K | Page 6 of 28
Data Sheet                                                                                                                        ADuM1200/ADuM1201
Parameter                                                Symbol           Min                     Typ        Max                   Unit       Test Conditions/Comments
  ADuM1200/ADuM1201BR                                                                                                                         CL = 15 pF, CMOS signal levels
    Minimum Pulse Width2                                 PW                                                  100                   ns
      Maximum Data Rate3                                                  10                                                       Mbps
      Propagation Delay4                                 tPHL, tPLH       20                                 60                    ns
      Pulse Width Distortion, |tPLH − tPHL|4             PWD                                                 3                     ns
        Change vs. Temperature                                                                    5                                ps/°C
      Propagation Delay Skew5                            tPSK                                                22                    ns
      Channel-to-Channel Matching
        Codirectional Channels6                          tPSKCD                                              3                     ns
        Opposing Directional Channels6                   tPSKOD                                              22                    ns
      Output Rise/Fall Time (10% to 90%)                 tR/tF                                    3.0                              ns
    ADuM1200/ADuM1201CR
      Minimum Pulse Width2                               PW                                       20         40                    ns
      Maximum Data Rate      3                                            25                      50                               Mbps
      Propagation Delay4                                 tPHL, tPLH       20                                 55                    ns
      Pulse Width Distortion, |tPLH − tPHL|4             PWD                                                 3                     ns
        Change vs. Temperature                                                                    5                                ps/°C
      Propagation Delay Skew5                            tPSK                                                16                    ns
      Channel-to-Channel Matching
        Codirectional Channels6                          tPSKCD                                              3                     ns
         Opposing Directional Channels6                  tPSKOD                                              16                    ns
      Output Rise/Fall Time (10% to 90%)                 tR/tF                                    3.0                              ns
    For All Models
      Common-Mode Transient Immunity
         Logic High Output 7                             |CMH|            25                      35                               kV/µs      VIx = VDD1 or VDD2, VCM = 1000 V,
                                                                                                                                              transient magnitude = 800 V
         Logic Low Output7                               |CML|            25                      35                               kV/µs      VIx = 0 V, VCM = 1000 V,
                                                                                                                                              transient magnitude = 800 V
      Refresh Rate                                       fr                                       1.1                              Mbps
      Dynamic Supply Current per Channel 8
        Input                                            IDDI (D)                                 0.10                             mA/
                                                                                                                                   Mbps
         Output                                          IDDO (D)                                 0.03                             mA/
                                                                                                                                   Mbps

1
  The supply current values are for both channels combined when running at identical data rates. Output supply current values are specified with no output load
  present. The supply current associated with an individual channel operating at a given data rate can be calculated as described in the Power Consumption section. See
  Figure 6 through Figure 8 for information on per-channel supply current as a function of data rate for unloaded and loaded conditions. See Figure 9 through Figure 11
  for total VDD1 and VDD2 supply currents as a function of data rate for ADuM1200 and ADuM1201 channel configurations.
2
  The minimum pulse width is the shortest pulse width at which the specified pulse width distortion is guaranteed.
3
  The maximum data rate is the fastest data rate at which the specified pulse width distortion is guaranteed.
4
  tPHL propagation delay is measured from the 50% level of the falling edge of the VIx signal to the 50% level of the falling edge of the VOx signal. tPLH propagation delay is
  measured from the 50% level of the rising edge of the VIx signal to the 50% level of the rising edge of the VOx signal.
5
  tPSK is the magnitude of the worst-case difference in tPHL and/or tPLH that is measured between units at the same operating temperature, supply voltages, and output
  load within the recommended operating conditions.
6
  Codirectional channel-to-channel matching is the absolute value of the difference in propagation delays between any two channels with inputs on the same side of
  the isolation barrier. Opposing directional channel-to-channel matching is the absolute value of the difference in propagation delays between any two channels with
  inputs on opposing sides of the isolation barrier.
7
  CMH is the maximum common-mode voltage slew rate that can be sustained while maintaining VO > 0.8 VDD2. CML is the maximum common-mode voltage slew rate
  that can be sustained while maintaining VO < 0.8 V. The common-mode voltage slew rates apply to both rising and falling common-mode voltage edges. The transient
  magnitude is the range over which the common mode is slewed.
8
  Dynamic supply current is the incremental amount of supply current required for a 1 Mbps increase in the signal data rate. See Figure 6 through Figure 8 for
  information on per-channel supply current as a function of data rate for unloaded and loaded conditions. See the Power Consumption section for guidance on
  calculating per-channel supply current for a given data rate.




                                                                               Rev. K | Page 7 of 28
ADuM1200/ADuM1201                                                                                                             Data Sheet
ELECTRICAL CHARACTERISTICS—MIXED 5 V/3 V OR 3 V/5 V, 105°C OPERATION
All voltages are relative to the respective ground; 5 V/3 V operation: 4.5 V ≤ VDD1 ≤ 5.5 V, 2.7 V ≤ VDD2 ≤ 3.6 V. 3 V/5 V operation:
2.7 V ≤ VDD1 ≤ 3.6 V, 4.5 V ≤ VDD2 ≤ 5.5 V; all minimum/maximum specifications apply over the entire recommended operating range,
unless otherwise noted; all typical specifications are at TA = 25°C; VDD1 = 3.0 V, VDD2 = 5.0 V; or VDD1 = 5.0 V, VDD2 = 3.0 V; this does not
apply to ADuM1200W and ADuM1201W automotive grade products.

Table 3.
Parameter                               Symbol       Min                 Typ               Max              Unit     Test Conditions /Comments
DC SPECIFICATIONS
  Input Supply Current per Channel,     IDDI (Q)
     Quiescent
     5 V/3 V Operation                                                   0.50              0.6              mA
     3 V/5 V Operation                                                   0.26              0.35             mA
  Output Supply Current per Channel,    IDDO (Q)
     Quiescent
     5 V/3 V Operation                                                   0.11              0.20             mA
     3 V/5 V Operation                                                   0.19              0.25             mA
  ADuM1200 Total Supply Current,
     Two Channels 1
     DC to 2 Mbps
        VDD1 Supply Current             IDD1 (Q)
           5 V/3 V Operation                                             1.1               1.4              mA       DC to 1 MHz logic signal freq.
           3 V/5 V Operation                                             0.6               1.0              mA       DC to 1 MHz logic signal freq.
        VDD2 Supply Current             IDD2 (Q)
           5 V/3 V Operation                                             0.2               0.6              mA       DC to 1 MHz logic signal freq.
           3 V/5 V Operation                                             0.5               0.8              mA       DC to 1 MHz logic signal freq.
     10 Mbps (BR and CR Grades Only)
        VDD1 Supply Current             IDD1 (10)
           5 V/3 V Operation                                             4.3               5.5              mA       5 MHz logic signal freq.
           3 V/5 V Operation                                             2.2               3.4              mA       5 MHz logic signal freq.
        VDD2 Supply Current             IDD2 (10)
           5 V/3 V Operation                                             0.7               1.1              mA       5 MHz logic signal freq.
           3 V/5 V Operation                                             1.3               2.0              mA       5 MHz logic signal freq.
     25 Mbps (CR Grade Only)
        VDD1 Supply Current             IDD1 (25)
           5 V/3 V Operation                                             10                13               mA       12.5 MHz logic signal freq.
           3 V/5 V Operation                                             5.2               7.7              mA       12.5 MHz logic signal freq.
        VDD2 Supply Current             IDD2 (25)
           5 V/3 V Operation                                             1.5               2.0              mA       12.5 MHz logic signal freq.
           3 V/5 V Operation                                             2.8               3.4              mA       12.5 MHz logic signal freq.
  ADuM1201 Total Supply Current,
     Two Channels1
     DC to 2 Mbps
        VDD1 Supply Current             IDD1 (Q)
           5 V/3 V Operation                                             0.8               1.1              mA       DC to 1 MHz logic signal freq.
           3 V/5 V Operation                                             0.4               0.8              mA       DC to 1 MHz logic signal freq.
        VDD2 Supply Current             IDD2 (Q)
           5 V/3 V Operation                                             0.4               0.8              mA       DC to 1 MHz logic signal freq.
           3 V/5 V Operation                                             0.8               1.1              mA       DC to 1 MHz logic signal freq.
     10 Mbps (BR and CR Grades Only)
        VDD1 Supply Current             IDD1 (10)
           5 V/3 V Operation                                             2.8               3.5              mA       5 MHz logic signal freq.
           3 V/5 V Operation                                             1.5               2.2              mA       5 MHz logic signal freq.
        VDD2 Supply Current             IDD2 (10)
           5 V/3 V Operation                                             1.5               2.2              mA       5 MHz logic signal freq.
           3 V/5 V Operation                                             2.8               3.5              mA       5 MHz logic signal freq.




                                                               Rev. K | Page 8 of 28
Data Sheet                                                                                                                       ADuM1200/ADuM1201
Parameter                                     Symbol          Min                    Typ                    Max                  Unit    Test Conditions /Comments
    25 Mbps (CR Grade Only)
       VDD1 Supply Current                    IDD1 (25)
           5 V/3 V Operation                                                         6.3                    8.0                  mA      12.5 MHz logic signal freq.
           3 V/5 V Operation                                                         3.4                    4.8                  mA      12.5 MHz logic signal freq.
       VDD2 Supply Current                    IDD2 (25)
           5 V/3 V Operation                                                         3.4                    4.8                  mA      12.5 MHz logic signal freq.
           3 V/5 V Operation                                                         6.3                    8.0                  mA      12.5 MHz logic signal freq.
  For All Models
    Input Currents                            IIA, IIB        −10                    +0.01                  +10                  µA      0 V ≤ VIA, VIB ≤ (VDD1 or VDD2)
    Logic High Input Threshold                VIH             0.7 (VDD1 or VDD2)                                                 V
    Logic Low Input Threshold                 VIL                                                           0.3 (VDD1 or VDD2)   V
    Logic High Output Voltages                VOAH, VOBH      (VDD1 or VDD2) − 0.1   VDD1 or VDD2                                V       IOx = −20 µA, VIx = VIxH
                                                              (VDD1 or VDD2) − 0.5   (VDD1 or VDD2) − 0.2                        V       IOx = −4 mA, VIx = VIxH
     Logic Low Output Voltages                VOAL, VOBL                             0.0                    0.1                  V       IOx = 20 µA, VIx = VIxL
                                                                                     0.04                   0.1                  V       IOx = 400 µA, VIx = VIxL
                                                                                     0.2                    0.4                  V       IOx = 4 mA, VIx = VIxL
SWITCHING SPECIFICATIONS
  ADuM1200/ADuM1201AR                                                                                                                    CL = 15 pF, CMOS signal levels
    Minimum Pulse Width 2                     PW                                                            1000                 ns
    Maximum Data Rate 3                                       1                                                                  Mbps
    Propagation Delay 4                       tPHL, tPLH      50                                            150                  ns
    Pulse Width Distortion, |tPLH − tPHL|4    PWD                                                           40                   ns
      Change vs. Temperature                                                         11                                          ps/°C
    Propagation Delay Skew 5                  tPSK                                                          50                   ns
    Channel-to-Channel Matching 6             tPSKCD/tPSKOD                                                 50                   ns
    Output Rise/Fall Time (10% to 90%)        tR/tF                                  10                                          ns
  ADuM1200/ADuM1201BR                                                                                                                    CL = 15 pF, CMOS signal levels
    Minimum Pulse Width2                      PW                                                            100                  ns
    Maximum Data Rate3                                        10                                                                 Mbps
    Propagation Delay4                        tPHL, tPLH      15                                            55                   ns
    Pulse Width Distortion, |tPLH − tPHL|4    PWD                                                           3                    ns
      Change vs. Temperature                                                         5                                           ps/°C
    Propagation Delay Skew5                   tPSK                                                          22                   ns
    Channel-to-Channel Matching
      Codirectional Channels6                 tPSKCD                                                        3                    ns
       Opposing Directional Channels6         tPSKOD                                                        22                   ns
     Output Rise/Fall Time (10% to 90%)       tR/tF
       5 V/3 V Operation                                                             3.0                                         ns
       3 V/5 V Operation                                                             2.5                                         ns
   ADuM1200/ADuM1201CR                                                                                                                   CL = 15 pF, CMOS signal levels
     Minimum Pulse Width2                     PW                                     20                     40                   ns
     Maximum Data Rate3                                       25                     50                                          Mbps
     Propagation Delay4                       tPHL, tPLH      20                                            50                   ns
     Pulse Width Distortion, |tPLH − tPHL|4   PWD                                                           3                    ns
       Change vs. Temperature                                                        5                                           ps/°C
     Propagation Delay Skew5                  tPSK                                                          15                   ns
     Channel-to-Channel Matching
       Codirectional Channels6                tPSKCD                                                        3                    ns
       Opposing Directional Channels      6   tPSKOD                                                        15                   ns
     Output Rise/Fall Time (10% to 90%)       tR/tF
       5 V/3 V Operation                                                             3.0                                         ns
       3 V/5 V Operation                                                             2.5                                         ns




                                                                          Rev. K | Page 9 of 28
ADuM1200/ADuM1201                                                                                                                                       Data Sheet
Parameter                                       Symbol           Min                    Typ                   Max                  Unit       Test Conditions /Comments
  For All Models
    Common-Mode Transient Immunity
       Logic High Output 7                      |CMH|            25                    35                                          kV/µs      VIx = VDD1 or VDD2, VCM = 1000 V,
                                                                                                                                              transient magnitude = 800 V
         Logic Low Output7                      |CML|            25                    35                                          kV/µs      VIx = 0 V, VCM = 1000 V,
                                                                                                                                              transient magnitude = 800 V
      Refresh Rate                              fr
         5 V/3 V Operation                                                             1.2                                         Mbps
         3 V/5 V Operation                                                             1.1                                         Mbps
      Input Dynamic Supply Current              IDDI (D)
         per Channel 8
         5 V/3 V Operation                                                             0.19                                        mA/
                                                                                                                                   Mbps
         3 V/5 V Operation                                                             0.10                                        mA/
                                                                                                                                   Mbps
      Output Dynamic Supply Current per         IDDO (D)
        Channel8
        5 V/3 V Operation                                                              0.03                                        mA/
                                                                                                                                   Mbps
         3 V/5 V Operation                                                             0.05                                        mA/
                                                                                                                                   Mbps

1
  The supply current values are for both channels combined when running at identical data rates. Output supply current values are specified with no output load
  present. The supply current associated with an individual channel operating at a given data rate can be calculated as described in the Power Consumption section. See
  Figure 6 through Figure 8 for information on per-channel supply current as a function of data rate for unloaded and loaded conditions. See Figure 9 through Figure 11
  for total VDD1 and VDD2 supply currents as a function of data rate for ADuM1200 and ADuM1201 channel configurations.
2
  The minimum pulse width is the shortest pulse width at which the specified pulse width distortion is guaranteed.
3
  The maximum data rate is the fastest data rate at which the specified pulse width distortion is guaranteed.
4
  tPHL propagation delay is measured from the 50% level of the falling edge of the VIx signal to the 50% level of the falling edge of the VOx signal. tPLH propagation delay is
  measured from the 50% level of the rising edge of the VIx signal to the 50% level of the rising edge of the VOx signal.
5
  tPSK is the magnitude of the worst-case difference in tPHL and/or tPLH that is measured between units at the same operating temperature, supply voltages, and output
  load within the recommended operating conditions.
6
  Codirectional channel-to-channel matching is the absolute value of the difference in propagation delays between any two channels with inputs on the same side of
  the isolation barrier. Opposing directional channel-to-channel matching is the absolute value of the difference in propagation delays between any two channels with
  inputs on opposing sides of the isolation barrier.
7
  CMH is the maximum common-mode voltage slew rate that can be sustained while maintaining VO > 0.8 VDD2. CML is the maximum common-mode voltage slew rate
  that can be sustained while maintaining VO < 0.8 V. The common-mode voltage slew rates apply to both rising and falling common-mode voltage edges. The transient
  magnitude is the range over which the common mode is slewed.
8
  Dynamic supply current is the incremental amount of supply current required for a 1 Mbps increase in the signal data rate. See Figure 6 through Figure 8 for
  information on per-channel supply current as a function of data rate for unloaded and loaded conditions. See the Power Consumption section for guidance on
  calculating per-channel supply current for a given data rate.




                                                                            Rev. K | Page 10 of 28
Data Sheet                                                                                                          ADuM1200/ADuM1201
ELECTRICAL CHARACTERISTICS—5 V, 125°C OPERATION
All voltages are relative to the respective ground; 4.5 V ≤ VDD1 ≤ 5.5 V, 4.5 V ≤ VDD2 ≤ 5.5 V; all minimum/maximum specifications apply
over the entire recommended operating range, unless otherwise noted; all typical specifications are at TA = 25°C, VDD1 = VDD2 = 5 V; this
applies to ADuM1200W and ADuM1201W automotive grade products.

Table 4.
Parameter                                    Symbol          Min                     Typ       Max                   Unit   Test Conditions/Comments
DC SPECIFICATIONS
  Input Supply Current per Channel,          IDDI (Q)                                0.50      0.60                  mA
     Quiescent
  Output Supply Current per Channel,         IDDO (Q)                                0.19      0.25                  mA
     Quiescent
  ADuM1200W, Total Supply Current,
     Two Channels 1
     DC to 2 Mbps
        VDD1 Supply Current                  IDD1 (Q)                                1.1       1.4                   mA     DC to 1 MHz logic signal freq.
        VDD2 Supply Current                  IDD2 (Q)                                0.5       0.8                   mA     DC to 1 MHz logic signal freq.
     10 Mbps (TRZ and URZ Grades Only)
        VDD1 Supply Current                  IDD1 (10)                               4.3       5.5                   mA     5 MHz logic signal freq.
        VDD2 Supply Current                  IDD2 (10)                               1.3       2.0                   mA     5 MHz logic signal freq.
     25 Mbps (URZ Grade Only)
        VDD1 Supply Current                  IDD1 (25)                               10        13                    mA     12.5 MHz logic signal freq.
        VDD2 Supply Current                  IDD2 (25)                               2.8       3.4                   mA     12.5 MHz logic signal freq.
  ADuM1201W, Total Supply Current,
     Two Channels1
     DC to 2 Mbps
        VDD1 Supply Current                  IDD1 (Q)                                0.8       1.1                   mA     DC to 1 MHz logic signal freq.
        VDD2 Supply Current                  IDD2 (Q)                                0.8       1.1                   mA     DC to 1 MHz logic signal freq.
     10 Mbps (TRZ and URZ Grades Only)
        VDD1 Supply Current                  IDD1 (10)                               2.8       3.5                   mA     5 MHz logic signal freq.
        VDD2 Supply Current                  IDD2 (10)                               2.8       3.5                   mA     5 MHz logic signal freq.
     25 Mbps (URZ Grade Only)
        VDD1 Supply Current                  IDD1 (25)                               6.3       8.0                   mA     12.5 MHz logic signal freq.
        VDD2 Supply Current                  IDD2 (25)                               6.3       8.0                   mA     12.5 MHz logic signal freq.
  For All Models
     Input Currents                          IIA, IIB        −10                     +0.01     +10                   µA     0 V ≤ VIA, VIB ≤ (VDD1 or VDD2)
     Logic High Input Threshold              VIH             0.7 (VDD1 or VDD2)                                      V
     Logic Low Input Threshold               VIL                                               0.3 (VDD1 or VDD2)    V
     Logic High Output Voltages              VOAH, VOBH      (VDD1 or VDD2) − 0.1    5.0                             V      IOx = −20 µA, VIx = VIxH
                                                             (VDD1 or VDD2) − 0.5    4.8                             V      IOx = −4 mA, VIx = VIxH
     Logic Low Output Voltages               VOAL, VOBL                              0.0       0.1                   V      IOx = 20 µA, VIx = VIxL
                                                                                     0.04      0.1                   V      IOx = 400 µA, VIx = VIxL
                                                                                     0.2       0.4                   V      IOx = 4 mA, VIx = VIxL
SWITCHING SPECIFICATIONS
  ADuM1200/ADuM1201WSRZ                                                                                                     CL = 15 pF, CMOS signal levels
    Minimum Pulse Width 2                    PW                                                1000                  ns
    Maximum Data Rate 3                                      1                                                       Mbps
    Propagation Delay 4                      tPHL, tPLH      20                                150                   ns
    Pulse Width Distortion, |tPLH − tPHL|4   PWD                                               40                    ns
    Propagation Delay Skew 5                 tPSK                                              100                   ns
    Channel-to-Channel Matching 6            tPSKCD/tPSKOD                                     50                    ns
    Output Rise/Fall Time (10% to 90%)       tR/tF                                   2.5                             ns




                                                                      Rev. K | Page 11 of 28
ADuM1200/ADuM1201                                                                                                                                       Data Sheet
Parameter                                          Symbol           Min                     Typ              Max                     Unit      Test Conditions/Comments
  ADuM1200/ADuM1201WTRZ                                                                                                                        CL = 15 pF, CMOS signal levels
    Minimum Pulse Width2                           PW                                                        100                     ns
      Maximum Data Rate3                                            10                                                               Mbps
      Propagation Delay4                           tPHL, tPLH       20                                       50                      ns
      Pulse Width Distortion, |tPLH − tPHL|4       PWD                                                       3                       ns
        Change vs. Temperature                                                              5                                        ps/°C
      Propagation Delay Skew5                      tPSK                                                      15                      ns
      Channel-to-Channel Matching
        Codirectional Channels6                    tPSKCD                                                    3                       ns
        Opposing Directional Channels6             tPSKOD                                                    15                      ns
      Output Rise/Fall Time (10% to 90%)           tR/tF                                    2.5                                      ns
    ADuM1200/ADuM1201WURZ                                                                                                                      CL = 15 pF, CMOS signal levels
      Minimum Pulse Width2                         PW                                       20               40                      ns
      Maximum Data Rate3                                            25                      50                                       Mbps
      Propagation Delay    4                       tPHL, tPLH       20                                       45                      ns
      Pulse Width Distortion, |tPLH − tPHL|4       PWD                                                       3                       ns
        Change vs. Temperature                                                              5                                        ps/°C
      Propagation Delay Skew5                      tPSK                                                      15                      ns
      Channel-to-Channel Matching
        Codirectional Channels6                    tPSKCD                                                    3                       ns
         Opposing Directional Channels6            tPSKOD                                                    15                      ns
      Output Rise/Fall Time (10% to 90%)           tR/tF                                    2.5                                      ns
    For All Models
      Common-Mode Transient Immunity
         Logic High Output 7                       |CMH|            25                      35                                       kV/µs     VIx = VDD1, VDD2, VCM = 1000 V,
                                                                                                                                               transient magnitude = 800 V
         Logic Low Output7                         |CML|            25                      35                                       kV/µs     VIx = 0 V, VCM = 1000 V,
                                                                                                                                               transient magnitude = 800 V
      Refresh Rate                                 fr                                       1.2                                      Mbps
      Dynamic Supply Current per Channel 8
        Input                                      IDDI (D)                                 0.19                                     mA/
                                                                                                                                     Mbps
         Output                                    IDDO (D)                                 0.05                                     mA/
                                                                                                                                     Mbps

1
  The supply current values are for both channels combined when running at identical data rates. Output supply current values are specified with no output load
  present. The supply current associated with an individual channel operating at a given data rate can be calculated as described in the Power Consumption section. See
  Figure 6 through Figure 8 for information on per-channel supply current as a function of data rate for unloaded and loaded conditions. See Figure 9 through Figure 11
  for total IDD1 and IDD2 supply currents as a function of data rate for ADuM1200W and ADuM1201W channel configurations.
2
  The minimum pulse width is the shortest pulse width at which the specified pulse width distortion is guaranteed.
3
  The maximum data rate is the fastest data rate at which the specified pulse width distortion is guaranteed.
4
  tPHL propagation delay is measured from the 50% level of the falling edge of the VIx signal to the 50% level of the falling edge of the VOx signal. tPLH propagation delay is
  measured from the 50% level of the rising edge of the VIx signal to the 50% level of the rising edge of the VOx signal.
5
  tPSK is the magnitude of the worst-case difference in tPHL and/or tPLH that is measured between units at the same operating temperature, supply voltages, and output
  load within the recommended operating conditions.
6
  Codirectional channel-to-channel matching is the absolute value of the difference in propagation delays between any two channels with inputs on the same side of
  the isolation barrier. Opposing directional channel-to-channel matching is the absolute value of the difference in propagation delays between any two channels with
  inputs on opposing sides of the isolation barrier.
7
  CMH is the maximum common-mode voltage slew rate that can be sustained while maintaining VO > 0.8 VDD2. CML is the maximum common-mode voltage slew rate
  that can be sustained while maintaining VO < 0.8 V. The common-mode voltage slew rates apply to both rising and falling common-mode voltage edges. The transient
  magnitude is the range over which the common mode is slewed.
8
  Dynamic supply current is the incremental amount of supply current required for a 1 Mbps increase in the signal data rate. See Figure 6 through Figure 8 for
  information on per-channel supply current as a function of data rate for unloaded and loaded conditions. See the Power Consumption section for guidance on
  calculating per-channel supply current for a given data rate.




                                                                            Rev. K | Page 12 of 28
Data Sheet                                                                                                              ADuM1200/ADuM1201
ELECTRICAL CHARACTERISTICS—3 V, 125°C OPERATION
All voltages are relative to the respective ground; 3.0 V ≤ VDD1 ≤ 3.6 V, 3.0 V ≤ VDD2 ≤ 3.6 V. All minimum/maximum specifications apply
over the entire recommended operating range, unless otherwise noted; all typical specifications are at TA = 25°C, VDD1 = VDD2 = 3.0 V;
this applies to ADuM1200W and ADuM1201W automotive grade products.

Table 5.
Parameter                                        Symbol          Min                       Typ     Max                  Unit   Test Conditions/Comments
DC SPECIFICATIONS
  Input Supply Current per Channel,              IDDI (Q)                                  0.26    0.35                 mA
     Quiescent
  Output Supply Current per Channel, Quiescent   IDDO (Q)                                  0.11    0.20                 mA
  ADuM1200W, Total Supply Current,
     Two Channels 1
     DC to 2 Mbps
        VDD1 Supply Current                      IDD1 (Q)                                  0.6     1.0                  mA     DC to 1 MHz logic signal freq.
        VDD2 Supply Current                      IDD2 (Q)                                  0.2     0.6                  mA     DC to 1 MHz logic signal freq.
     10 Mbps (TRZ and URZ Grades Only)
        VDD1 Supply Current                      IDD1 (10)                                 2.2     3.4                  mA     5 MHz logic signal freq.
        VDD2 Supply Current                      IDD2 (10)                                 0.7     1.1                  mA     5 MHz logic signal freq.
     25 Mbps (URZ Grade Only)
        VDD1 Supply Current                      IDD1 (25)                                 5.2     7.7                  mA     12.5 MHz logic signal freq.
        VDD2 Supply Current                      IDD2 (25)                                 1.5     2.0                  mA     12.5 MHz logic signal freq.
  ADuM1201W, Total Supply Current,
     Two Channels1
     DC to 2 Mbps
        VDD1 Supply Current                      IDD1 (Q)                                  0.4     0.8                  mA     DC to 1 MHz logic signal freq.
        VDD2 Supply Current                      IDD2 (Q)                                  0.4     0.8                  mA     DC to 1 MHz logic signal freq.
     10 Mbps (TRZ and URZ Grades Only)
        VDD1 Supply Current                      IDD1 (10)                                 1.5     2.2                  mA     5 MHz logic signal freq.
        VDD2 Supply Current                      IDD2 (10)                                 1.5     2.2                  mA     5 MHz logic signal freq.
     25 Mbps (URZ Grade Only)
        VDD1 Supply Current                      IDD1 (25)                                 3.4     4.8                  mA     12.5 MHz logic signal freq.
        VDD2 Supply Current                      IDD2 (25)                                 3.4     4.8                  mA     12.5 MHz logic signal freq.
  For All Models
     Input Currents                              IIA, IIB        −10                       +0.01   +10                  µA     0 V ≤ VIA, VIB ≤ (VDD1 or VDD2)
     Logic High Input Threshold                  VIH             0.7 (VDD1 or VDD2)                                     V
     Logic Low Input Threshold                   VIL                                               0.3 (VDD1 or VDD2)
     Logic High Output Voltages                  VOAH, VOBH      (VDD1 or VDD2) − 0.1      3.0                          V      IOx = −20 µA, VIx = VIxH
                                                                 (VDD1 or VDD2) − 0.5      2.8                          V      IOx = −4 mA, VIx = VIxH
     Logic Low Output Voltages                   VOAL, VOBL                                0.0     0.1                  V      IOx = 20 µA, VIx = VIxL
                                                                                           0.04    0.1                  V      IOx = 400 µA, VIx = VIxL
                                                                                           0.2     0.4                  V      IOx = 4 mA, VIx = VIxL
SWITCHING SPECIFICATIONS
  ADuM1200/ADuM1201WSRZ                                                                                                        CL = 15 pF, CMOS signal levels
    Minimum Pulse Width 2                        PW                                                1000                 ns
    Maximum Data Rate 3                                          1                                                      Mbps
    Propagation Delay 4                          tPHL, tPLH      20                                150                  ns
    Pulse Width Distortion, |tPLH − tPHL|4       PWD                                               40                   ns
    Propagation Delay Skew 5                     tPSK                                              100                  ns
    Channel-to-Channel Matching 6                tPSKCD/tPSKOD                                     50                   ns
    Output Rise/Fall Time (10% to 90%)           tR/tF                                     3                            ns




                                                                      Rev. K | Page 13 of 28
ADuM1200/ADuM1201                                                                                                                                       Data Sheet
Parameter                                               Symbol          Min                       Typ         Max                  Unit       Test Conditions/Comments
    ADuM1200/ADuM1201WTRZ                                                                                                                     CL = 15 pF, CMOS signal levels
      Minimum Pulse Width2                              PW                                                    100                  ns
      Maximum Data Rate3                                                10                                                         Mbps
      Propagation Delay    4                            tPHL, tPLH      20                                    60                   ns
      Pulse Width Distortion, |tPLH − tPHL|4            PWD                                                   3                    ns
        Change vs. Temperature                                                                    5                                ps/°C
      Propagation Delay Skew5                           tPSK                                                  22                   ns
      Channel-to-Channel Matching
        Codirectional Channels6                         tPSKCD                                                3                    ns
        Opposing Directional Channels6                  tPSKOD                                                22                   ns
      Output Rise/Fall Time (10% to 90%)                tR/tF                                     3.0                              ns
    ADuM1200/ADuM1201WCR                                                                                                                      CL = 15 pF, CMOS signal levels
      Minimum Pulse Width2                              PW                                        20          40                   ns
      Maximum Data Rate3                                                25                        50                               Mbps
      Propagation Delay4                                tPHL, tPLH      20                                    55                   ns
      Pulse Width Distortion, |tPLH − tPHL|4            PWD                                                   3                    ns
        Change vs. Temperature                                                                    5                                ps/°C
      Propagation Delay Skew5                           tPSK                                                  16                   ns
      Channel-to-Channel Matching
        Codirectional Channels6                         tPSKCD                                                3                    ns
         Opposing Directional Channels        6         tPSKOD                                                16                   ns
      Output Rise/Fall Time (10% to 90%)                tR/tF                                     3.0                              ns
    For All Models
      Common-Mode Transient Immunity
         Logic High Output 7                            |CMH|           25                        35                               kV/µs      VIx = VDD1, VDD2, VCM = 1000 V,
                                                                                                                                              transient magnitude = 800 V
         Logic Low Output7                              |CML|           25                        35                               kV/µs      VIx = 0 V, VCM = 1000 V,
                                                                                                                                              transient magnitude = 800 V
      Refresh Rate                                      fr                                        1.1                              Mbps
      Dynamic Supply Current per Channel 8
        Input                                           IDDI (D)                                  0.10                             mA/
                                                                                                                                   Mbps
         Output                                         IDDO (D)                                  0.03                             mA/
                                                                                                                                   Mbps
1
  The supply current values are for both channels combined when running at identical data rates. Output supply current values are specified with no output load
  present. The supply current associated with an individual channel operating at a given data rate can be calculated as described in the Power Consumption section. See
  Figure 6 through Figure 8 for information on per-channel supply current as a function of data rate for unloaded and loaded conditions. See Figure 9 through Figure 11
  for total IDD1 and IDD2 supply currents as a function of data rate for ADuM1200W and ADuM1201W channel configurations.
2
  The minimum pulse width is the shortest pulse width at which the specified pulse width distortion is guaranteed.
3
  The maximum data rate is the fastest data rate at which the specified pulse width distortion is guaranteed.
4
  tPHL propagation delay is measured from the 50% level of the falling edge of the VIx signal to the 50% level of the falling edge of the VOx signal. tPLH propagation delay is
  measured from the 50% level of the rising edge of the VIx signal to the 50% level of the rising edge of the VOx signal.
5
  tPSK is the magnitude of the worst-case difference in tPHL and/or tPLH that is measured between units at the same operating temperature, supply voltages, and output
  load within the recommended operating conditions.
6
  Codirectional channel-to-channel matching is the absolute value of the difference in propagation delays between any two channels with inputs on the same side of
  the isolation barrier. Opposing directional channel-to-channel matching is the absolute value of the difference in propagation delays between any two channels with
  inputs on opposing sides of the isolation barrier.
7
  CMH is the maximum common-mode voltage slew rate that can be sustained while maintaining VO > 0.8 VDD2. CML is the maximum common-mode voltage slew rate
  that can be sustained while maintaining VO < 0.8 V. The common-mode voltage slew rates apply to both rising and falling common-mode voltage edges. The transient
  magnitude is the range over which the common mode is slewed.
8
  Dynamic supply current is the incremental amount of supply current required for a 1 Mbps increase in the signal data rate. See Figure 6 through Figure 8 for
  information on per-channel supply current as a function of data rate for unloaded and loaded conditions. See the Power Consumption section for guidance on
  calculating per-channel supply current for a given data rate.




                                                                             Rev. K | Page 14 of 28
Data Sheet                                                                                                                        ADuM1200/ADuM1201
ELECTRICAL CHARACTERISTICS—MIXED 5 V/3 V, 125°C OPERATION
All voltages are relative to the respective ground; 5 V/3 V operation: 4.5 V ≤ VDD1 ≤ 5.5 V, 3.0 V ≤ VDD2 ≤ 3.6 V. 3 V/5 V operation; all
minimum/maximum specifications apply over the entire recommended operating range, unless otherwise noted; all typical specifications
are at TA = 25°C; VDD1 = 5.0 V, VDD2 = 3.0 V; this applies to ADuM1200W and ADuM1201W automotive grade products.

Table 6.
Parameter                                    Symbol           Min                     Typ                    Max                  Unit   Test Conditions/Comments
DC SPECIFICATIONS
  Input Supply Current per Channel,          IDDI (Q)                                 0.50                   0.6                  mA
     Quiescent
  Output Supply Current per Channel,         IDDO (Q)                                 0.11                   0.20                 mA
     Quiescent
  ADuM1200W, Total Supply Current,
     Two Channels 1
     DC to 2 Mbps
        VDD1 Supply Current                  IDD1 (Q)                                 1.1                    1.4                  mA     DC to 1 MHz logic signal freq.
        VDD2 Supply Current                  IDD2 (Q)                                 0.2                    0.6                  mA     DC to 1 MHz logic signal freq.
     10 Mbps (TRZ and URZ Grades Only)
        VDD1 Supply Current                  IDD1 (10)                                4.3                    5.5                  mA     5 MHz logic signal freq.
        VDD2 Supply Current                  IDD2 (10)                                0.7                    1.1                  mA     5 MHz logic signal freq.
      25 Mbps (URZ Grade Only)
        VDD1 Supply Current                  IDD1 (25)                                10                     13                   mA     12.5 MHz logic signal freq.
        VDD2 Supply Current                  IDD2 (25)                                1.5                    2.0                  mA     12.5 MHz logic signal freq.
  ADuM1201W, Total Supply Current,
     Two Channels1
     DC to 2 Mbps
        VDD1 Supply Current                  IDD1 (Q)                                 0.8                    1.1                  mA     DC to 1 MHz logic signal freq.
        VDD2 Supply Current                  IDD2 (Q)                                 0.4                    0.8                  mA     DC to 1 MHz logic signal freq.
     10 Mbps (TRZ and URZ Grades Only)
        VDD1 Supply Current                  IDD1 (10)                                2.8                    3.5                  mA     5 MHz logic signal freq.
        VDD2 Supply Current                  IDD2 (10)                                1.5                    2.2                  mA     5 MHz logic signal freq.
     25 Mbps (URZ Grade Only)
        VDD1 Supply Current                  IDD1 (25)                                6.3                    8.0                  mA     12.5 MHz logic signal freq.
        VDD2 Supply Current                  IDD2 (25)                                3.4                    4.8                  mA     12.5 MHz logic signal freq.
  For All Models
     Input Currents                          IIA, IIB         −10                     +0.01                  +10                  µA     0 V ≤ VIA, VIB ≤ (VDD1 or VDD2)
     Logic High Input Threshold              VIH              0.7 (VDD1 or VDD2)                                                  V
     Logic Low Input Threshold               VIL                                                             0.3 (VDD1 or VDD2)   V
     Logic High Output Voltages              VOAH, VOBH       (VDD1 or VDD2) − 0.1    VDD1 or VDD2                                V      IOx = −20 µA, VIx = VIxH
                                                              (VDD1 or VDD2) − 0.5    (VDD1 or VDD2) − 0.2                        V      IOx = −4 mA, VIx = VIxH
     Logic Low Output Voltages               VOAL, VOBL                               0.0                    0.1                  V      IOx = 20 µA, VIx = VIxL
                                                                                      0.04                   0.1                  V      IOx = 400 µA, VIx = VIxL
                                                                                      0.2                    0.4                  V      IOx = 4 mA, VIx = VIxL
SWITCHING SPECIFICATIONS
  ADuM1200/ADuM1201WSRZ                                                                                                                  CL = 15 pF, CMOS signal levels
    Minimum Pulse Width 2                    PW                                                              1000                 ns
    Maximum Data Rate 3                                       1                                                                   Mbps
    Propagation Delay 4                      tPHL, tPLH       15                                             150                  ns
    Pulse Width Distortion, |tPLH − tPHL|4   PWD                                                             40                   ns
    Propagation Delay Skew 5                 tPSK                                                            50                   ns
    Channel-to-Channel Matching 6            tPSKCD/ tPSKOD                                                  50                   ns
    Output Rise/Fall Time (10% to 90%)       tR/tF                                    3                                           ns




                                                                          Rev. K | Page 15 of 28
ADuM1200/ADuM1201                                                                                                                                       Data Sheet
Parameter                                       Symbol           Min                     Typ                    Max                Unit       Test Conditions/Comments
    ADuM1200/ADuM1201WTRZ                                                                                                                     CL = 15 pF, CMOS signal levels
      Minimum Pulse Width2                      PW                                                              100                ns
      Maximum Data Rate3                                         10                                                                Mbps
      Propagation Delay    4                    tPHL, tPLH       15                                             55                 ns
      Pulse Width Distortion, |tPLH − tPHL|4    PWD                                                             3                  ns
        Change vs. Temperature                                                           5                                         ps/°C
      Propagation Delay Skew5                   tPSK                                                            22                 ns
      Channel-to-Channel Matching
        Codirectional Channels6                 tPSKCD                                                          3                  ns
        Opposing Directional Channels      6    tPSKOD                                                          22                 ns
      Output Rise/Fall Time (10% to 90%)        tR/tF                                    3.0                                       ns
    ADuM1200/ADuM1201WURZ                                                                                                                     CL = 15 pF, CMOS signal levels
      Minimum Pulse Width2                      PW                                       20                     40                 ns
      Maximum Data Rate3                                         25                      50                                        Mbps
      Propagation Delay4                        tPHL, tPLH       20                                             50                 ns
      Pulse Width Distortion, |tPLH − tPHL|4    PWD                                                             3                  ns
        Change vs. Temperature                                                           5                                         ps/°C
      Propagation Delay Skew5                   tPSK                                                            15                 ns
      Channel-to-Channel Matching
        Codirectional Channels6                 tPSKCD                                                          3                  ns
         Opposing Directional Channels6         tPSKOD                                                          15                 ns
      Output Rise/Fall Time (10% to 90%)        tR/tF                                    3.0                                       ns
    For All Models
      Common-Mode Transient Immunity
         Logic High Output 7                    |CMH|            25                      35                                        kV/µs      VIx = VDD1, VDD2, VCM = 1000 V,
                                                                                                                                              transient magnitude = 800 V
         Logic Low Output7                      |CML|            25                      35                                        kV/µs      VIx = VDD1, VDD2, VCM = 1000 V,
                                                                                                                                              transient magnitude = 800 V
      Refresh Rate                              fr                                       1.2                                       Mbps
      Dynamic Supply Current per
        Channel 8
        Input                                   IDDI (D)                                 0.19                                      mA/
                                                                                                                                   Mbps
         Output                                 IDDO (D)                                 0.03                                      mA/
                                                                                                                                   Mbps

1
  The supply current values are for both channels combined when running at identical data rates. Output supply current values are specified with no output load
  present. The supply current associated with an individual channel operating at a given data rate can be calculated as described in the Power Consumption section. See
  Figure 6 through Figure 8 for information on per-channel supply current as a function of data rate for unloaded and loaded conditions. See Figure 9 through Figure 11
  for total IDD1 and IDD2 supply currents as a function of data rate for ADuM1200W and ADuM1201W channel configurations.
2
  The minimum pulse width is the shortest pulse width at which the specified pulse width distortion is guaranteed.
3
  The maximum data rate is the fastest data rate at which the specified pulse width distortion is guaranteed.
4
  tPHL propagation delay is measured from the 50% level of the falling edge of the VIx signal to the 50% level of the falling edge of the VOx signal. tPLH propagation delay is
  measured from the 50% level of the rising edge of the VIx signal to the 50% level of the rising edge of the VOx signal.
5
  tPSK is the magnitude of the worst-case difference in tPHL and/or tPLH that is measured between units at the same operating temperature, supply voltages, and output
  load within the recommended operating conditions.
6
  Codirectional channel-to-channel matching is the absolute value of the difference in propagation delays between any two channels with inputs on the same side of
  the isolation barrier. Opposing directional channel-to-channel matching is the absolute value of the difference in propagation delays between any two channels with
  inputs on opposing sides of the isolation barrier.
7
  CMH is the maximum common-mode voltage slew rate that can be sustained while maintaining VO > 0.8 VDD2. CML is the maximum common-mode voltage slew rate
  that can be sustained while maintaining VO < 0.8 V. The common-mode voltage slew rates apply to both rising and falling common-mode voltage edges. The transient
  magnitude is the range over which the common mode is slewed.
8
  Dynamic supply current is the incremental amount of supply current required for a 1 Mbps increase in the signal data rate. See Figure 6 through Figure 8 for
  information on per-channel supply current as a function of data rate for unloaded and loaded conditions. See the Power Consumption section for guidance on
  calculating per-channel supply current for a given data rate.




                                                                            Rev. K | Page 16 of 28
Data Sheet                                                                                                                    ADuM1200/ADuM1201
ELECTRICAL CHARACTERISTICS—MIXED 3 V/5 V, 125°C OPERATION
All voltages are relative to the respective ground; 3.0 V ≤ VDD1 ≤ 3.6 V, 4.5 V ≤ VDD2 ≤ 5.5 V; all minimum/maximum specifications apply
over the entire recommended operating range, unless otherwise noted; all typical specifications are at TA = 25°C; VDD1 = 3.0 V, VDD2 = 5.0 V;
this applies to ADuM1200W and ADuM1201W automotive grade products.

Table 7.
Parameter                                    Symbol       Min                     Typ                    Max                  Unit   Test Conditions/Comments
DC SPECIFICATIONS
  Input Supply Current per Channel,          IDDI (Q)                             0.26                   0.35                 mA
     Quiescent
  Output Supply Current per Channel,         IDDO (Q)                             0.19                   0.25                 mA
     Quiescent
  ADuM1200W, Total Supply Current,
     Two Channels 1
     DC to 2 Mbps
        VDD1 Supply Current                  IDD1 (Q)                             0.6                    1.0                  mA     DC to 1 MHz logic signal freq.
        VDD2 Supply Current                  IDD2 (Q)                             0.5                    0.8                  mA     DC to 1 MHz logic signal freq.
     10 Mbps (TRZ and URZ Grades Only)
        VDD1 Supply Current                  IDD1 (10)                            2.2                    3.4                  mA     5 MHz logic signal freq.
        VDD2 Supply Current                  IDD2 (10)                            1.3                    2.0                  mA     5 MHz logic signal freq.
      25 Mbps (URZ Grade Only)
        VDD1 Supply Current                  IDD1 (25)                            5.2                    7.7                  mA     12.5 MHz logic signal freq.
        VDD2 Supply Current                  IDD2 (25)                            2.8                    3.4                  mA     12.5 MHz logic signal freq.
  ADuM1201W, Total Supply Current,
     Two Channels1
     DC to 2 Mbps
        VDD1 Supply Current                  IDD1 (Q)                             0.4                    0.8                  mA     DC to 1 MHz logic signal freq.
        VDD2 Supply Current                  IDD2 (Q)                             0.8                    1.1                  mA     DC to 1 MHz logic signal freq.
     10 Mbps (TRZ and URZ Grades Only)
        VDD1 Supply Current                  IDD1 (10)                            1.5                    2.2                  mA     5 MHz logic signal freq.
        VDD2 Supply Current                  IDD2 (10)                            2.8                    3.5                  mA     5 MHz logic signal freq.
     25 Mbps (URZ Grade Only)
        VDD1 Supply Current                  IDD1 (25)                            3.4                    4.8                  mA     12.5 MHz logic signal freq.
        VDD2 Supply Current                  IDD2 (25)                            6.3                    8.0                  mA     12.5 MHz logic signal freq.
  For All Models
     Input Currents                          IIA, IIB     −10                     +0.01                  +10                  µA     0 V ≤ VIA, VIB ≤ (VDD1 or VDD2)
     Logic High Input Threshold              VIH          0.7 (VDD1 or VDD2)                                                  V
     Logic Low Input Threshold               VIL                                                         0.3 (VDD1 or VDD2)   V
     Logic High Output Voltages              VOAH, VOBH   (VDD1 or VDD2) − 0.1    VDD1 or VDD2                                V      IOx = −20 µA, VIx = VIxH
                                                          (VDD1 or VDD2) − 0.5    (VDD1 or VDD2) − 0.2                        V      IOx = −4 mA, VIx = VIxH
      Logic Low Output Voltages              VOAL, VOBL                           0.0                    0.1                  V      IOx = 20 µA, VIx = VIxL
                                                                                  0.04                   0.1                  V      IOx = 400 µA, VIx = VIxL
                                                                                  0.2                    0.4                  V      IOx = 4 mA, VIx = VIxL
SWITCHING SPECIFICATIONS
  ADuM1200/ADuM1201WSRZ                                                                                                              CL = 15 pF, CMOS signal levels
    Minimum Pulse Width 2                    PW                                                          1000                 ns
    Maximum Data Rate 3                                   1                                                                   Mbps
    Propagation Delay 4                      tPHL, tPLH   15                                             150                  ns
    Pulse Width Distortion, |tPLH − tPHL|4   PWD                                                         40                   ns
    Propagation Delay Skew 5                 tPSK                                                        50                   ns
    Channel-to-Channel Matching 6            tPSKCD/                                                     50                   ns
                                             tPSKOD
      Output Rise/Fall Time (10% to 90%)     tR/tF                                3                                           ns




                                                                      Rev. K | Page 17 of 28
ADuM1200/ADuM1201                                                                                                                                       Data Sheet
Parameter                                         Symbol         Min                     Typ                    Max                Unit       Test Conditions/Comments
    ADuM1200/ADuM1201WTRZ                                                                                                                     CL = 15 pF, CMOS signal levels
      Minimum Pulse Width2                        PW                                                            100                ns
      Maximum Data Rate3                                         10                                                                Mbps
      Propagation Delay    4                      tPHL, tPLH     15                                             55                 ns
      Pulse Width Distortion, |tPLH − tPHL|4      PWD                                                           3                  ns
        Change vs. Temperature                                                           5                                         ps/°C
      Propagation Delay Skew5                     tPSK                                                          22                 ns
      Channel-to-Channel Matching
        Codirectional Channels6                   tPSKCD                                                        3                  ns
        Opposing Directional Channels6            tPSKOD                                                        22                 ns
      Output Rise/Fall Time (10% to 90%)          tR/tF                                  2.5                                       ns
    ADuM1200/ADuM1201WURZ                                                                                                                     CL = 15 pF, CMOS signal levels
      Minimum Pulse Width2                        PW                                     20                     40                 ns
      Maximum Data Rate3                                         25                      50                                        Mbps
      Propagation Delay4                          tPHL, tPLH     20                                             50                 ns
      Pulse Width Distortion, |tPLH − tPHL|4      PWD                                                           3                  ns
        Change vs. Temperature                                                           5                                         ps/°C
      Propagation Delay Skew5                     tPSK                                                          15                 ns
      Channel-to-Channel Matching
        Codirectional Channels6                   tPSKCD                                                        3                  ns
         Opposing Directional Channels        6   tPSKOD                                                        15                 ns
      Output Rise/Fall Time (10% to 90%)          tR/tF                                  2.5                                       ns
    For All Models
      Common-Mode Transient Immunity
         Logic High Output 7                      |CMH|          25                      35                                        kV/µs      VIx = VDD1, VDD2, VCM = 1000 V,
                                                                                                                                              transient magnitude = 800 V
         Logic Low Output7                        |CML|          25                      35                                        kV/µs      VIx = 0 V, VCM = 1000 V,
                                                                                                                                              transient magnitude = 800 V
      Refresh Rate                                fr                                     1.1                                       Mbps
      Input Dynamic Supply Current                IDDI (D)                               0.10                                      mA/
         per Channel 8                                                                                                             Mbps
      Output Dynamic Supply Current               IDDO (D)                               0.05                                      mA/
         per Channel8                                                                                                              Mbps

1
  The supply current values are for both channels combined when running at identical data rates. Output supply current values are specified with no output load
  present. The supply current associated with an individual channel operating at a given data rate can be calculated as described in the Power Consumption section. See
  Figure 6 through Figure 8 for information on per-channel supply current as a function of data rate for unloaded and loaded conditions. See Figure 9 through Figure 11
  for total IDD1 and IDD2 supply currents as a function of data rate for ADuM1200W and ADuM1201W channel configurations.
2
  The minimum pulse width is the shortest pulse width at which the specified pulse width distortion is guaranteed.
3
  The maximum data rate is the fastest data rate at which the specified pulse width distortion is guaranteed.
4
  tPHL propagation delay is measured from the 50% level of the falling edge of the VIx signal to the 50% level of the falling edge of the VOx signal. tPLH propagation delay is
  measured from the 50% level of the rising edge of the VIx signal to the 50% level of the rising edge of the VOx signal.
5
  tPSK is the magnitude of the worst-case difference in tPHL and/or tPLH that is measured between units at the same operating temperature, supply voltages, and output
  load within the recommended operating conditions.
6
  Codirectional channel-to-channel matching is the absolute value of the difference in propagation delays between any two channels with inputs on the same side of
  the isolation barrier. Opposing directional channel-to-channel matching is the absolute value of the difference in propagation delays between any two channels with
  inputs on opposing sides of the isolation barrier.
7
  CMH is the maximum common-mode voltage slew rate that can be sustained while maintaining VO > 0.8 VDD2. CML is the maximum common-mode voltage slew rate
  that can be sustained while maintaining VO < 0.8 V. The common-mode voltage slew rates apply to both rising and falling common-mode voltage edges. The transient
  magnitude is the range over which the common mode is slewed.
8
  Dynamic supply current is the incremental amount of supply current required for a 1 Mbps increase in the signal data rate. See Figure 6 through Figure 8 for
  information on per-channel supply current as a function of data rate for unloaded and loaded conditions. See the Power Consumption section for guidance on
  calculating per-channel supply current for a given data rate.




                                                                            Rev. K | Page 18 of 28
Data Sheet                                                                                                                            ADuM1200/ADuM1201
PACKAGE CHARACTERISTICS
Table 8.
Parameter                                                                   Symbol          Min         Typ     Max        Unit        Test Conditions/Comments
Resistance (Input-to-Output) 1                                              RI-O                        1012               Ω
Capacitance (Input-to-Output)1                                              CI-O                        1.0                pF          f = 1 MHz
Input Capacitance                                                           CI                          4.0                pF
IC Junction-to-Case Thermal Resistance, Side 1                              θJCI                        46                 °C/W        Thermocouple located at
                                                                                                                                       center of package underside
IC Junction-to-Case Thermal Resistance, Side 2                              θJCO                        41                 °C/W
1
    The device is considered a 2-terminal device; Pin 1, Pin, 2, Pin 3, and Pin 4 are shorted together, and Pin 5, Pin 6, Pin 7, and Pin 8 are shorted together.


REGULATORY INFORMATION
The ADuM1200/ADuM1201 and ADuM1200W/ADuM1201W are approved by the organizations listed in Table 9; refer to Table 14 and
the Insulation Lifetime section for details regarding recommended maximum working voltages for specific cross-isolation waveforms and
insulation levels.

Table 9.
UL                                        CSA                                                        CQC                                    VDE
Recognized Under 1577                     Approved under CSA Component                               Approved under                         Certified according to
Component Recognition                     Acceptance Notice 5A                                       CQC11-471543-2012                      DIN V VDE V 0884-10
Program 1                                                                                                                                   (VDE V 0884-10): 2006-12 2
Single/Basic 2500 V rms                   Basic insulation per CSA 60950-1-03 and IEC                Basic insulation per                   Reinforced insulation,
Isolation Voltage                         60950-1, 400 V rms (566 peak) maximum                      GB4943.1-2011                          560 V peak
                                          working voltage
                                          Functional insulation per CSA 60950-1-03 and               Basic insulation, 400 V rms
                                          IEC 60950-1, 800 V rms (1131 V peak)                       (588 V peak) maximum
                                          maximum working voltage                                    working voltage, tropical
                                                                                                     climate, altitude ≤ 5000 m
File E214100                              File 205078                                                File CQC14001114901                    File 2471900-4880-0001
1
  In accordance with UL 1577, each ADuM1200, ADuM1201, ADuM1200W, and ADuM1201W is proof tested by applying an insulation test voltage ≥ 3000 V rms for 1 sec
  (current leakage detection limit = 5 µA).
2
  In accordance with DIN V VDE V 0884-10, each ADuM1200, ADuM1201, ADuM1200W, and ADuM1201W is proof tested by applying an insulation test voltage ≥ 1050 V
  peak for 1 sec (partial discharge detection limit = 5 pC). The * and/or & marking branded on the component designates DIN V VDE V 0884-10 approval.


INSULATION AND SAFETY-RELATED SPECIFICATIONS
Table 10.
Parameter                                                             Symbol        Value            Unit       Conditions
Rated Dielectric Insulation Voltage                                                 2500             V rms      1 minute duration
Minimum External Air Gap (Clearance)                                  L(I01)        4.90 min         mm         Measured from input terminals to output terminals,
                                                                                                                shortest distance through air
Minimum External Tracking (Creepage)                                  L(I02)        4.01 min         mm         Measured from input terminals to output terminals,
                                                                                                                shortest distance path along body
Minimum Internal Gap (Internal Clearance)                                           0.017 min        mm         Insulation distance through insulation
Tracking Resistance (Comparative Tracking Index)                      CTI           >400             V          DIN IEC 112/VDE 0303 Part 1
Isolation Group                                                                     II                          Material Group (DIN VDE 0110, 1/89, Table 1)




                                                                               Rev. K | Page 19 of 28
ADuM1200/ADuM1201                                                                                                                                                              Data Sheet
DIN V VDE V 0884-10 (VDE V 0884-10): 2006-12 INSULATION CHARACTERISTICS
This isolator is suitable for reinforced isolation only within the safety limit data. Maintenance of the safety data is ensured by protective
circuits. Note that the asterisk (*) marking on the package denotes DIN V VDE V 0884-10 approval for a 560 V peak working voltage.

Table 11.
Description                                                                        Conditions                                                             Symbol       Characteristic        Unit
Installation Classification per DIN VDE 0110
   For Rated Mains Voltage ≤ 150 V rms                                                                                                                                 I to IV
   For Rated Mains Voltage ≤ 300 V rms                                                                                                                                 I to III
   For Rated Mains Voltage ≤ 400 V rms                                                                                                                                 I to II
Climatic Classification                                                                                                                                                40/105/21
Pollution Degree per DIN VDE 0110, Table 1                                                                                                                             2
Maximum Working Insulation Voltage                                                                                                                        VIORM        560                   V peak
Input-to-Output Test Voltage, Method B1                                            VIORM × 1.875 = VPR, 100% production test,                             VPR          1050                  V peak
                                                                                   tm = 1 second, partial discharge < 5 pC
Input-to-Output Test Voltage, Method A                                             VIORM × 1.6 = VPR, tm = 60 seconds,                                    VPR
                                                                                   partial discharge < 5 pC
  After Environmental Tests Subgroup 1                                                                                                                                 896                   V peak
  After Input and/or Safety Test Subgroup 2                                        VIORM × 1.2 = VPR, tm = 60 seconds,                                                 672                   V peak
     and Subgroup 3                                                                partial discharge < 5 pC
Highest Allowable Overvoltage                                                      Transient overvoltage, tTR = 10 seconds                                VTR          4000                  V peak
Safety-Limiting Values                                                             Maximum value allowed in the event of a failure
                                                                                   (see Figure 3)
   Case Temperature                                                                                                                                       TS           150                   °C
   Side 1 Current                                                                                                                                         IS1          160                   mA
   Side 2 Current                                                                                                                                         IS2          170                   mA
Insulation Resistance at TS                                                        VIO = 500 V                                                            RS           >109                  Ω
                                  200
                                                                                                                     RECOMMENDED OPERATING CONDITIONS
                                  180
                                                                                                                     Table 12.
   SAFETY-LIMITING CURRENT (mA)




                                  160
                                                                                                                     Parameter                                            Rating
                                  140
                                            SIDE #1        SIDE #2                                                   Operating Temperature (TA) 1                         −40°C to +105°C
                                  120
                                                                                                                     Operating Temperature (TA) 2                         −40°C to +125°C
                                  100
                                                                                                                     Supply Voltages (VDD1, VDD2)1, 3                     2.7 V to 5.5 V
                                   80                                                                                Supply Voltages (VDD1, VDD2)2, 3                     3.0 V to 5.5 V
                                   60                                                                                Input Signal Rise and Fall Times                     1.0 ms
                                   40                                                                                1
                                                                                                                       Does not apply to ADuM1200W and ADuM1201W automotive grade
                                   20                                                                                  products.
                                                                                                                     2
                                                                                                                       Applies to ADuM1200W and ADuM1201W automotive grade products.
                                    0                                                                                3
                                                                                                                       All voltages are relative to the respective ground. See the DC Correctness and
                                                                                                   04642-003




                                        0             50            100          150         200
                                                                                                                       Magnetic Field Immunity section for information on immunity to external
                                                           CASE TEMPERATURE (°C)
                                                                                                                       magnetic fields.
 Figure 3. Thermal Derating Curve, Dependence of Safety-Limiting Values
              on Case Temperature per DIN V VDE V 0884-10




                                                                                                    Rev. K | Page 20 of 28
Data Sheet                                                                                                                      ADuM1200/ADuM1201

ABSOLUTE MAXIMUM RATINGS
Ambient temperature = 25°C, unless otherwise noted.                                          Stresses at or above those listed under Absolute Maximum
Table 13.                                                                                    Ratings may cause permanent damage to the product. This is a
                                                                                             stress rating only; functional operation of the product at these
Parameter                                          Rating
                                                                                             or any other conditions above those indicated in the operational
Storage Temperature (TST)                          −55°C to +150°C
                                                                                             section of this specification is not implied. Operation beyond
Ambient Operating Temperature (TA) 1               −40°C to +105°C
                                                                                             the maximum operating conditions for extended periods may
Ambient Operating Temperature (TA) 2               −40°C to +125°C
                                                                                             affect product reliability.
Supply Voltages (VDD1, VDD2) 3                     −0.5 V to +7.0 V
Input Voltages (VIA, VIB)3, 4                      −0.5 V to VDDI + 0.5 V                    ESD CAUTION
Output Voltages (VOA, VOB)3, 4                     −0.5 V to VDDO + 0.5 V
Average Output Current per Pin (IO) 5              −11 mA to +11 mA
Common-Mode Transients (CML, CMH) 6                −100 kV/µs to +100 kV/µs
1
  Does not apply to ADuM1200W and ADuM1201W automotive grade
  products.
2
  Applies to ADuM1200W and ADuM1201W automotive grade products.
3
  All voltages are relative to the respective ground.
4
  VDDI and VDDO refer to the supply voltages on the input and output sides of a
  given channel, respectively.
5
  See Figure 3 for maximum rated current values for various temperatures.
6
  Refers to common-mode transients across the insulation barrier.
  Common-mode transients exceeding the absolute maximum ratings
  can cause latch-up or permanent damage.


Table 14. Maximum Continuous Working Voltage1
Parameter                                      Max                Unit               Constraint
AC Voltage, Bipolar Waveform                   565                V peak             50-year minimum lifetime
AC Voltage, Unipolar Waveform
  Functional Insulation                        1131               V peak             Maximum approved working voltage per IEC 60950-1
  Basic Insulation                             560                V peak             Maximum approved working voltage per IEC 60950-1 and VDE V 0884-10
DC Voltage
  Functional Insulation                        1131               V peak             Maximum approved working voltage per IEC 60950-1
  Basic Insulation                             560                V peak             Maximum approved working voltage per IEC 60950-1 and VDE V 0884-10
1
    Refers to continuous voltage magnitude imposed across the isolation barrier. See the Insulation Lifetime section for more details.




                                                                            Rev. K | Page 21 of 28
ADuM1200/ADuM1201                                                                                                                                          Data Sheet

PIN CONFIGURATIONS AND FUNCTION DESCRIPTIONS
                  VDD1 1                     8 VDD2                                                       VDD1 1                    8   VDD2
                    VIA 2   ADuM1200 7 VOA                                                                VOA 2    ADuM1201 7 VIA
                              TOP VIEW                                                                               TOP VIEW




                                                                                                                                               04642-005
                    VIB 3   (Not to Scale)   6 VOB                                                         VIB 3
                                                                                                                   (Not to Scale)
                                                                                                                                    6   VOB




                                                      04642-004
                  GND1 4                     5 GND2                                                    GND1 4                       5   GND2



                Figure 4. ADuM1200 Pin Configuration                                                Figure 5. ADuM1201 Pin Configuration

Table 15. ADuM1200 Pin Function Descriptions                                           Table 16. ADuM1201 Pin Function Descriptions
Pin                                                                                    Pin
No.    Mnemonic     Description                                                        No.     Mnemonic        Description
1      VDD1         Supply Voltage for Isolator Side 1.                                1       VDD1            Supply Voltage for Isolator Side 1.
2      VIA          Logic Input A.                                                     2       VOA             Logic Output A.
3      VIB          Logic Input B.                                                     3       VIB             Logic Input B.
4      GND1         Ground 1. Ground Reference for Isolator Side 1.                    4       GND1            Ground 1. Ground Reference for Isolator Side 1.
5      GND2         Ground 2. Ground Reference for Isolator Side 2.                    5       GND2            Ground 2. Ground Reference for Isolator Side 2.
6      VOB          Logic Output B.                                                    6       VOB             Logic Output B.
7      VOA          Logic Output A.                                                    7       VIA             Logic Input A.
8      VDD2         Supply Voltage for Isolator Side 2.                                8       VDD2            Supply Voltage for Isolator Side 2.



Table 17. ADuM1200 Truth Table (Positive Logic)
VIA Input   VIB Input       VDD1 State          VDD2 State        VOA Output              VOB Output          Notes
H           H               Powered             Powered           H                       H
L           L               Powered             Powered           L                       L
H           L               Powered             Powered           H                       L
L           H               Powered             Powered           L                       H
X           X               Unpowered           Powered           H                       H                   Outputs return to the input state within
                                                                                                              1 μs of VDDI power restoration.
X           X               Powered             Unpowered         Indeterminate           Indeterminate       Outputs return to the input state within
                                                                                                              1 μs of VDDO power restoration.

Table 18. ADuM1201 Truth Table (Positive Logic)
VIA Input   VIB Input       VDD1 State          VDD2 State        VOA Output              VOB Output          Notes
H           H               Powered             Powered           H                       H
L           L               Powered             Powered           L                       L
H           L               Powered             Powered           H                       L
L           H               Powered             Powered           L                       H
X           X               Unpowered           Powered           Indeterminate           H                   Outputs return to the input state within
                                                                                                              1 μs of VDDI power restoration.
X           X               Powered             Unpowered         H                       Indeterminate       Outputs return to the input state within
                                                                                                              1 μs of VDDO power restoration.




                                                                      Rev. K | Page 22 of 28
Data Sheet                                                                                                                                                  ADuM1200/ADuM1201

TYPICAL PERFORMANCE CHARACTERISTICS
                          10                                                                                                     20



                           8
                                                                                                                                 15
 CURRENT/CHANNEL (mA)




                                                                                                                CURRENT (mA)
                           6

                                                                                                                                 10

                           4                                                                                                                                       5V
                                                   5V
                                                                   3V                                                             5
                           2
                                                                                                                                                                   3V


                           0                                                                                                      0


                                                                                            04642-006




                                                                                                                                                                                                04642-009
                               0               10               20                   30                                               0                 10               20               30
                                                DATA RATE (Mbps)                                                                                         DATA RATE (Mbps)

                        Figure 6. Typical Input Supply Current per Channel vs. Data Rate                                        Figure 9. Typical ADuM1200 VDD1 Supply Current vs. Data Rate
                                             for 5 V and 3 V Operation                                                                             for 5 V and 3 V Operation
                           4                                                                                                      4




                           3                                                                                                      3
 CURRENT/CHANNEL (mA)




                                                                                                                CURRENT (mA)




                           2                                                                                                      2


                                                                     5V                                                                            5V
                                                                                                                                                                              3V
                           1                                                                                                      1
                                                                   3V



                           0                                                                                                      0




                                                                                                                                                                                                04642-010
                                                                                            04642-007




                               0               10               20                   30                                               0                 10               20               30
                                                DATA RATE (Mbps)                                                                                         DATA RATE (Mbps)

                        Figure 7. Typical Output Supply Current per Channel vs. Data Rate                                       Figure 10. Typical ADuM1200 VDD2 Supply Current vs. Data Rate
                                    for 5 V and 3 V Operation (No Output Load)                                                                      for 5 V and 3 V Operation
                           4                                                                                                     10



                                                                                                                                  8
                           3
 CURRENT/CHANNEL (mA)




                                                                                                                 CURRENT (mA)




                                                                                                                                  6
                                                                          5V
                           2                                                                                                                                            5V

                                                                                                                                  4


                                                                          3V                                                                                            3V
                           1
                                                                                                                                  2



                           0                                                                                                      0
                                                                                                                                                                                                04642-011
                                                                                            04642-008




                               0               10               20                   30                                               0                 10               20               30
                                                DATA RATE (Mbps)                                                                                         DATA RATE (Mbps)

                        Figure 8. Typical Output Supply Current per Channel vs. Data Rate                       Figure 11. Typical ADuM1201 VDD1 or VDD2 Supply Current vs. Data Rate
                                   for 5 V and 3 V Operation (15 pF Output Load)                                                      for 5 V and 3 V Operation




                                                                                            Rev. K | Page 23 of 28
ADuM1200/ADuM1201                                                                                                                                                    Data Sheet

APPLICATIONS INFORMATION
PCB LAYOUT                                                                         The 3 V operating condition of the ADuM1200/ADuM1201 is
The ADuM1200/ADuM1201 digital isolators require no external                        examined because it represents the most susceptible mode of
interface circuitry for the logic interfaces. Power supply bypassing               operation.
is strongly recommended at the input and output supply pins.                       The pulses at the transformer output have an amplitude greater
The capacitor value must be between 0.01 μF and 0.1 μF.                            than 1.0 V. The decoder has a sensing threshold at about 0.5 V,
The total lead length between both ends of the capacitor and                       therefore establishing a 0.5 V margin in which induced voltages
the input power supply pin must not exceed 20 mm.                                  can be tolerated. The voltage induced across the receiving coil is
                                                                                   given by
See the AN-1109 Application Note for board layout guidelines.
                                                                                                           V = (−dβ/dt)Σ∏rn2; n = 1, 2, … , N
PROPAGATION DELAY-RELATED PARAMETERS
                                                                                   where:
Propagation delay is a parameter that describes the time it takes                  β is the magnetic flux density (gauss).
a logic signal to propagate through a component. The propagation                   N is the number of turns in the receiving coil.
delay to a logic low output can differ from the propagation delay                  rn is the radius of the nth turn in the receiving coil (cm).
to a logic high output.
                                                                                   Given the geometry of the receiving coil in the ADuM1200/
INPUT (VIx)                                       50%                              ADuM1201 and an imposed requirement that the induced
                        tPLH        tPHL                                           voltage be 50% at most of the 0.5 V margin at the decoder, a
                                                                                   maximum allowable magnetic field is calculated, as shown in
                                                                       04642-012




OUTPUT (VOx)                                            50%
                                                                                   Figure 13.
                Figure 12. Propagation Delay Parameters                                                                 100
                                                                                      MAXIMUM ALLOWABLE MAGNETIC FLUX




Pulse width distortion is the maximum difference between
these two propagation delay values and is an indication of                                                               10

how accurately the timing of the input signal is preserved.
                                                                                              DENSITY (kgauss)




Channel-to-channel matching refers to the maximum amount                                                                  1

that the propagation delay differs between channels within a
single ADuM1200/ADuM1201 component.                                                                                     0.1

Propagation delay skew refers to the maximum amount that
the propagation delay differs between multiple ADuM1200/                                                            0.01
ADuM1201 components operating under the same conditions.
DC CORRECTNESS AND MAGNETIC FIELD IMMUNITY                                                                 0.001




                                                                                                                                                                                      04642-013
                                                                                                                1k                   10k     100k        1M       10M          100M
Positive and negative logic transitions at the isolator input send                                                                     MAGNETIC FIELD FREQUENCY (Hz)
narrow (~1 ns) pulses to the decoder via the transformer. The                                                           Figure 13. Maximum Allowable External Magnetic Flux Density
decoder is bistable and is therefore either set or reset by the pulses,
                                                                                   For example, at a magnetic field frequency of 1 MHz, the
indicating input logic transitions. In the absence of logic transitions
                                                                                   maximum allowable magnetic field of 0.2 kgauss induces a
of more than ~1 μs at the input, a periodic set of refresh pulses
                                                                                   voltage of 0.25 V at the receiving coil. This is about 50% of the
indicative of the correct input state is sent to ensure dc correctness
                                                                                   sensing threshold and does not cause a faulty output transition.
at the output. If the decoder receives no internal pulses for more
                                                                                   Similarly, if such an event occurs during a transmitted pulse (and
than about 5 μs, the input side is assumed to be unpowered or
                                                                                   has the worst-case polarity), it reduces the received pulse from
nonfunctional, in which case the isolator output is forced to a
                                                                                   >1.0 V to 0.75 V—still well above the 0.5 V sensing threshold of
default state (see Table 17 and Table 18) by the watchdog timer
                                                                                   the decoder.
circuit.
                                                                                   The preceding magnetic flux density values correspond to
The ADuM1200/ADuM1201 are extremely immune to external
                                                                                   specific current magnitudes at given distances away from the
magnetic fields. The limitation on the magnetic field immunity
                                                                                   ADuM1200/ADuM1201 transformers. Figure 14 expresses these
of the ADuM1200/ADuM1201 is set by the condition in which
                                                                                   allowable current magnitudes as a function of frequency for
induced voltage in the receiving coil of the transformer is suf-
                                                                                   selected distances. As seen, the ADuM1200/ADuM1201 are
ficiently large enough to either falsely set or reset the decoder.
                                                                                   extremely immune and can be affected only by extremely large
The following analysis defines the conditions under which this
                                                                                   currents operating very close to the component at a high frequency.
can occur.
                                                                                   For the 1 MHz example, place a 0.5 kA current 5 mm away from
                                                                                   the ADuM1200/ADuM1201 to affect the operation of the
                                                                                   component.
                                                                  Rev. K | Page 24 of 28
Data Sheet                                                                                                                                                 ADuM1200/ADuM1201
                                   1000
                                                                                                                          INSULATION LIFETIME
                                                                                 DISTANCE = 1m
  MAXIMUM ALLOWABLE CURRENT (kA)




                                                                                                                          All insulation structures eventually break down when subjected
                                    100
                                                                                                                          to voltage stress over a sufficiently long period. The rate of insu-
                                                                                                                          lation degradation is dependent on the characteristics of the voltage
                                     10                                                                                   waveform applied across the insulation. In addition to the testing
                                               DISTANCE = 100mm                                                           performed by the regulatory agencies, Analog Devices carries
                                      1
                                                                                                                          out an extensive set of evaluations to determine the lifetime of
                                                      DISTANCE = 5mm
                                                                                                                          the insulation structure within the ADuM1200/ADuM1201.
                                    0.1                                                                                   Analog Devices performs accelerated life testing using voltage
                                                                                                                          levels higher than the rated continuous working voltage. Accel-
                                                                                                                          eration factors for several operating conditions are determined.
                                   0.01
                                                                                                                          These factors allow calculation of the time to failure at the actual




                                                                                                         04642-014
                                          1k           10k        100k      1M         10M        100M
                                                         MAGNETIC FIELD FREQUENCY (Hz)                                    working voltage. The values shown in Table 14 summarize the
                                               Figure 14. Maximum Allowable Current for Various                           peak voltage for 50 years of service life for a bipolar ac operating
                                                  Current-to-ADuM1200/ADuM1201 Spacings                                   condition and the maximum CSA/VDE approved working volt-
Note that, at combinations of strong magnetic fields and high                                                             ages. In many cases, the approved working voltage is higher than
frequencies, any loops formed by PCB traces can induce suffi-                                                             the 50-year service life voltage. Operation at these high working
ciently large error voltages to trigger the threshold of succeeding                                                       voltages can lead to shortened insulation life in some cases.
circuitry. Take care in the layout of such traces to avoid this                                                           The insulation lifetime of the ADuM1200/ADuM1201 depends
possibility.                                                                                                              on the voltage waveform type imposed across the isolation barrier.
                                                                                                                          The iCoupler insulation structure degrades at different rates
POWER CONSUMPTION
                                                                                                                          depending on whether the waveform is bipolar ac, unipolar ac,
The supply current at a given channel of the ADuM1200/                                                                    or dc. Figure 15, Figure 16, and Figure 17 illustrate these different
ADuM1201 isolator is a function of the supply voltage, the data                                                           isolation voltage waveforms, respectively.
rate of the channel, and the output load of the channel.
                                                                                                                          Bipolar ac voltage is the most stringent environment. The goal
For each input channel, the supply current is given by                                                                    of a 50-year operating lifetime under the ac bipolar condition
                                   IDDI = IDDI (Q)                                                  f ≤ 0.5fr             determines the Analog Devices recommended maximum
                                   IDDI = IDDI (D) × (2f − fr) + IDDI (Q)                           f > 0.5fr             working voltage.
                                                                                                                          In the case of unipolar ac or dc voltage, the stress on the insu-
For each output channel, the supply current is given by
                                                                                                                          lation is significantly lower, which allows operation at higher
                                   IDDO = IDDO (Q)                                                  f ≤ 0.5fr             working voltages yet still achieves a 50-year service life. The
                                   IDDO = (IDDO (D) + (0.5 × 10 ) × CLVDDO) × (2f − fr) + IDDO (Q)
                                                                     −3
                                                                                                                          working voltages listed in Table 14 can be applied while main-
                                                                                           f > 0.5fr                      taining the 50-year minimum lifetime provided the voltage
where:                                                                                                                    conforms to either the unipolar ac or dc voltage cases. Any cross-
IDDI (D), IDDO (D) are the input and output dynamic supply currents                                                       insulation voltage waveform that does not conform to Figure 16
per channel (mA/Mbps).                                                                                                    or Figure 17 is to be treated as a bipolar ac waveform, and the
CL is the output load capacitance (pF).                                                                                   peak voltage is to be limited to the 50-year lifetime voltage value
VDDO is the output supply voltage (V).                                                                                    listed in Table 14.
f is the input logic signal frequency (MHz, half of the input data                                                        Note that the voltage presented in Figure 16 is shown as sinu-
rate, NRZ signaling).                                                                                                     soidal for illustration purposes only. It is meant to represent any
fr is the input stage refresh rate (Mbps).                                                                                voltage waveform varying between 0 V and some limiting value.
IDDI (Q), IDDO (Q) are the specified input and output quiescent                                                           The limiting value can be positive or negative, but the voltage
supply currents (mA).                                                                                                     cannot cross 0 V.
                                                                                                                                           RATED PEAK VOLTAGE
To calculate the total IDD1 and IDD2 supply currents, the supply
currents for each input and output channel corresponding to
                                                                                                                                                                                 04642-021




                                                                                                                                           0V
IDD1 and IDD2 are calculated and totaled. Figure 6 and Figure 7
provide per-channel supply currents as a function of data rate                                                                                  Figure 15. Bipolar AC Waveform
for an unloaded output condition. Figure 8 provides per-
channel supply current as a function of data rate for a 15 pF
output condition. Figure 9 through Figure 11 provide total
VDD1 and VDD2 supply current as a function of data rate for
ADuM1200 and ADuM1201 channel configurations.
                                                                                                         Rev. K | Page 25 of 28
ADuM1200/ADuM1201                                                                                             Data Sheet
       RATED PEAK VOLTAGE                                                       RATED PEAK VOLTAGE




                                           04642-022




                                                                                                              04642-023
       0V                                                                       0V

         Figure 16. Unipolar AC Waveform                                             Figure 17. DC Waveform




                                                       Rev. K | Page 26 of 28
Data Sheet                                                                                                                               ADuM1200/ADuM1201

OUTLINE DIMENSIONS
                                                    5.00 (0.1968)
                                                    4.80 (0.1890)


                                                     8        5
                                    4.00 (0.1574)                    6.20 (0.2441)
                                    3.80 (0.1497)    1               5.80 (0.2284)
                                                              4




                                                    1.27 (0.0500)                                      0.50 (0.0196)
                                                        BSC                                                             45°
                                                                       1.75 (0.0688)                   0.25 (0.0099)
                                0.25 (0.0098)                          1.35 (0.0532)
                                                                                        8°
                                0.10 (0.0040)                                           0°
                           COPLANARITY                         0.51 (0.0201)
                               0.10                                                                     1.27 (0.0500)
                                                               0.31 (0.0122)           0.25 (0.0098)
                                     SEATING                                                            0.40 (0.0157)
                                       PLANE                                           0.17 (0.0067)

                                             COMPLIANT TO JEDEC STANDARDS MS-012-AA
                                  CONTROLLING DIMENSIONS ARE IN MILLIMETERS; INCH DIMENSIONS




                                                                                                                              012407-A
                                  (IN PARENTHESES) ARE ROUNDED-OFF MILLIMETER EQUIVALENTS FOR
                                  REFERENCE ONLY AND ARE NOT APPROPRIATE FOR USE IN DESIGN.

                                        Figure 18. 8-Lead Standard Small Outline Package [SOIC_N]
                                                             Narrow Body (R-8)
                                               Dimensions shown in millimeters and (inches)

ORDERING GUIDE
                   Number            Number              Maximum             Maximum                   Maximum
                   of Inputs,        of Inputs,          Data Rate           Propagation               Pulse Width                        Temperature       Package
Model1, 2          VDD1 Side         VDD2 Side           (Mbps)              Delay, 5 V (ns)           Distortion (ns)                    Range             Option3
ADuM1200AR         2                 0                   1                   150                       40                                 −40°C to +105°C   R-8
ADuM1200ARZ        2                 0                   1                   150                       40                                 −40°C to +105°C   R-8
ADuM1200ARZ-RL7    2                 0                   1                   150                       40                                 −40°C to +105°C   R-8
ADuM1200BR         2                 0                   10                  50                        3                                  −40°C to +105°C   R-8
ADuM1200BRZ        2                 0                   10                  50                        3                                  −40°C to +105°C   R-8
ADuM1200BRZ-RL7    2                 0                   10                  50                        3                                  −40°C to +105°C   R-8
ADuM1200CR         2                 0                   25                  45                        3                                  −40°C to +105°C   R-8
ADuM1200CRZ        2                 0                   25                  45                        3                                  −40°C to +105°C   R-8
ADuM1200CRZ-RL7    2                 0                   25                  45                        3                                  −40°C to +105°C   R-8
ADuM1200WSRZ       2                 0                   1                   150                       40                                 −40°C to +125°C   R-8
ADuM1200WSRZ-RL7   2                 0                   1                   150                       40                                 −40°C to +125°C   R-8
ADuM1200WTRZ       2                 0                   10                  50                        3                                  −40°C to +125°C   R-8
ADuM1200WTRZ-RL7   2                 0                   10                  50                        3                                  −40°C to +125°C   R-8
ADuM1200WURZ       2                 0                   25                  45                        3                                  −40°C to +125°C   R-8
ADuM1200WURZ-RL7   2                 0                   25                  45                        3                                  −40°C to +125°C   R-8
ADuM1201AR         1                 1                   1                   150                       40                                 −40°C to +105°C   R-8
ADuM1201AR-RL7     1                 1                   1                   150                       40                                 −40°C to +105°C   R-8
ADuM1201ARZ        1                 1                   1                   150                       40                                 −40°C to +105°C   R-8
ADuM1201ARZ-RL7    1                 1                   1                   150                       40                                 −40°C to +105°C   R-8
ADuM1201BR         1                 1                   10                  50                        3                                  −40°C to +105°C   R-8
ADuM1201BR-RL7     1                 1                   10                  50                        3                                  −40°C to +105°C   R-8
ADuM1201BRZ        1                 1                   10                  50                        3                                  −40°C to +105°C   R-8
ADuM1201BRZ-RL7    1                 1                   10                  50                        3                                  −40°C to +105°C   R-8
ADuM1201CR         1                 1                   25                  45                        3                                  −40°C to +105°C   R-8
ADuM1201CRZ        1                 1                   25                  45                        3                                  −40°C to +105°C   R-8
ADuM1201CRZ-RL7    1                 1                   25                  45                        3                                  −40°C to +105°C   R-8




                                                                  Rev. K | Page 27 of 28
ADuM1200/ADuM1201                                                                                                                     Data Sheet
                                  Number            Number            Maximum        Maximum           Maximum
                                  of Inputs,        of Inputs,        Data Rate      Propagation       Pulse Width       Temperature       Package
Model 1, 2                        VDD1 Side         VDD2 Side         (Mbps)         Delay, 5 V (ns)   Distortion (ns)   Range             Option 3
ADuM1201WSRZ                      1                 1                 1              150               40                −40°C to +125°C   R-8
ADuM1201WSRZ-RL7                  1                 1                 1              150               40                −40°C to +125°C   R-8
ADuM1201WTRZ                      1                 1                 10             50                3                 −40°C to +125°C   R-8
ADuM1201WTRZ-RL7                  1                 1                 10             50                3                 −40°C to +125°C   R-8
ADuM1201WURZ                      1                 1                 25             45                3                 −40°C to +125°C   R-8
ADuM1201WURZ-RL7                  1                 1                 25             45                3                 −40°C to +125°C   R-8
1
    Z = RoHS Compliant Part.
2
    W = Qualified for Automotive Applications.
3
    R-8 = 8-lead narrow-body SOIC_N.


AUTOMOTIVE PRODUCTS
The ADuM1200W/ADuM1201W models are available with controlled manufacturing to support the quality and reliability requirements
of automotive applications. Note that these automotive models may have specifications that differ from the commercial models; therefore,
designers should review the Specifications section of this data sheet carefully. Only the automotive grade products shown are available for
use in automotive applications. Contact your local Analog Devices account representative for specific product ordering information and
to obtain the specific Automotive Reliability reports for these models.




©2004–2016 Analog Devices, Inc. All rights reserved. Trademarks and
registered trademarks are the property of their respective owners.
                                                   D04642-0-9/16(K)


                                                                          Rev. K | Page 28 of 28
```
