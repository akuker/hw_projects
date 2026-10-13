# SP3232E_MaxLinear (pdftotext -layout)

                                                                                                                                                        SP3222E / SP3232E
                                                                                                                True 3.0V to 5.5V RS-232 Transceivers



Description
                                                                                                                                                       FEATURES
The SP3222E and SP3232E series are RS-232 transceiver solutions                                                                                        ■ Meets true EIA/TIA-232-F standards from

intended for portable or hand-held applications such as notebook                                                                                         a 3.0V to 5.5V power supply
or palmtop computers. The SP3222E / SP3232E series has a high-                                                                                         ■ Minimum 120kbps data rate under full load

                                                                                                                                                       ■ 1μA low power shutdown with receivers
efficiency, charge-pump power supply that requires only 0.1µF
capacitors in 3.3V operation. This charge pump allows the SP3222E                                                                                        active (SP3222E)
                                                                                                                                                       ■ Interoperable with RS-232 down to a 2.7V
/ SP3232E series to deliver true RS-232 performance from a single
                                                                                                                                                         power source
power supply ranging from 3.0V to 5.5V. The SP3222E / SP3232E                                                                                          ■ Enhanced ESD specifications:
are 2-driver / 2-receiver devices. This series is ideal for portable or                                                                                  ■ ±15kV Human Body Model
hand-held applications such as notebook or palmtop computers. The                                                                                        ■ ±15kV IEC61000-4-2 Air Discharge

ESD tolerance of the SP3222E / SP3232E devices are over ±15kV                                                                                            ■ ±8kV IEC61000-4-2 Contact

for both Human Body Model and IEC61000-4-2 Air discharge test                                                                                               Discharge
methods. The SP3222E device has a low-power shutdown mode
where the devices’ driver outputs and charge pumps are disabled.
During shutdown, the supply current falls to less than 1µA.
                                                                                                                                                                Ordering Information - Page 21


Typical Applications
                                    VCC                                                                                                                                                          VCC

          +                          19                                                                                                                                 +                         17
    C5        0.1µF                                                                                                                                               C5        0.1µF
                                    VCC                                                                                                                                                          VCC
                        2 C1+                           3                                                                                                                            2 C1+                           3
          +                                        V+              +                                                                                                    +                                       V+              +
   C1         0.1µ F                                         *C3       0.1µF                                                                                     C1         0.1µF                                         *C3       0.1µF
                        4 C1-                                                                                                                                                        4 C1-
                        5 C2+     SP3222E          V-   7                                                                                                                            5 C2+     SP3222E          V-   7
          +                                                                                                                                                             +
   C2         0.1µF                SSOP                      C4        0.1µF                                                                                     C2         0.1µF               SOIC                      C4        0.1µF
                        6 C2-      TSSOP                           +                                                                                                                 6 C2-                                      +

                       13 T1IN               T1OUT      17                                                                                                                          12 T1IN               T1OUT      15
  LOGIC                                                         RS-232                                                                                          LOGIC                                                        RS-232
 INPUTS                12 T2IN               T2OUT      8       OUTPUTS                                                                                        INPUTS               11 T2IN               T2OUT      8       OUTPUTS


                       15 R1OUT                  R1IN   16                                                                                                                          13 R1OUT                  R1IN   14

  LOGIC                                    5kΩ                     RS-232                                                                                       LOGIC                                   5kΩ                     RS-232
OUTPUTS                                                            INPUTS                                                                                     OUTPUTS                                                           INPUTS
                       10 R2OUT                  R2IN   9                                                                                                                           10 R2OUT                  R2IN   9
                                           5kΩ                                                                                                                                                          5kΩ
                        1 EN                            20                                                                                                                           1 EN                            18
                                                 SHDN                                                              VCC                                                                                        SHDN

                                    GND                                                                                                                                                          GND
                                                        *can be returned to              +                          16                                                                                               *can be returned to
                                      18                                           C5        0.1µF                                                                                                 16
                                                         either VCC or GND                                         VCC                                                                                                either VCC or GND
                                                                                                      1 C1+                            2
                                                                                         +                                       V+               +
                                                                                  C1         0.1µF                                          *C3       0.1µF
                                                                                                      3 C1-
                                                                                                      4 C2+     SP3232E           V-
                                                                                                                                       6
                                                                                         +
                                                                                  C2         0.1µF                                          C4        0.1µF
                                                                                                      5 C2-                                       +


                                                                                                     11 T1IN                T1OUT      14
                                                                                 LOGIC                                                         RS-232
                                                                                INPUTS               10 T2IN                T2OUT      7       OUTPUTS


                                                                                                     12 R1OUT                   R1IN   13

                                                                                 LOGIC                                    5kΩ                     RS-232
                                                                               OUTPUTS                                                            INPUTS
                                                                                                     9 R2OUT                    R2IN   8
                                                                                                                          5kΩ



                                                                                                                   GND
                                                                                                                                       *can be returned to
                                                                                                                     15                 either VCC or GND




                                                                                                                REV 1.0.3                                                                                                           1/21
                                                                                                                                  SP3222E / SP3232E

Absolute Maximum Ratings
These are stress ratings only and functional operation                                     Short-Circuit Duration
of the device at these ratings or any other above those
                                                                                           TxOUT................................................................Continuous
indicated in the operation sections of the specifications
below is not implied. Exposure to absolute maximum
rating conditions for extended periods of time may affect                                  Storage Temperature..................................-65˚C to +150˚C
reliability and cause permanent damage to the device.

                                                                                           Power Dissipation per package
VCC..................................................................-0.3V to 6.0V
                                                                                           20-pin SSOP (derate 9.25mW/°C above 70°C).......750mW
V+(1).................................................................-0.3V to 7.0V
                                                                                           18-pin SOIC (derate 15.7mW/°C above 70°C).......1260mW
V-(1)..................................................................0.3V to -7.0V
                                                                                           20-pin TSSOP (derate 11.1mW/°C above 70°C).....890mW
V+ + |V-|(1).......................................................................13V
                                                                                           16-pin SSOP (derate 9.69mW/°C above 70°C).......775mW
ICC (DC VCC or GND current).................................±100mA
                                                                                           16-pin PDIP (derate 14.3mW/°C above 70°C).......1150mW
                                                                                           16-pin WSOIC (derate 11.2mW/°C above 70°C).....900mW
Input Voltages
                                                                                           16-pin TSSOP (derate 10.5mW/°C above 70°C).....850mW
TxIN, EN, SHDN.................................-0.3V to (VCC + 0.3V)
                                                                                           16-pin NSOIC (derate 13.57mW/°C above 70°C)..1086mW
RxIN.............................................................................±25V
Output Voltages
                                                                                           NOTE:
TxOUT......................................................................±13.2V          1. V+ and V- can have maximum magnitudes of 7V, but their absolute differ-
                                                                                                ence cannot exceed 13V.
RxOUT...............................................-0.3V to (VCC + 0.3V)


Electrical Characteristics
Unless otherwise noted, the following specifications apply for VCC = 3.0V to 5.5V with TAMB = TMIN to TMAX, typical values
apply at VCC = 3.3V or 5.0V and TAMB = 25°C.

              PARAMETERS                              MIN.             TYP.              MAX.           UNITS                          CONDITIONS
 DC Characteristics
                                                                                                                      no load, VCC = 3.3V,
 Supply current                                                          0.3              1.0              mA
                                                                                                                      TAMB = 25oC, TxIN = GND or VCC
                                                                                                                      SHDN = GND, VCC = 3.3V,
 Shutdown supply current                                                 1.0              10               µA
                                                                                                                      TAMB = 25oC, TxIN = Vcc or GND
 Logic Inputs and Receiver Outputs
 Input logic threshold LOW                                                                0.8              V          TxIN, EN, SHDN(2)
 Input logic threshold HIGH                            2.0                               VCC               V          VCC = 3.3V(2)
 Input logic threshold HIGH                            2.4                               VCC               V          VCC = 5.0V(2)
                                                                                                                      TxIN, EN, SHDN,
 Input leakage current                                                 +0.01             +1.0              µA
                                                                                                                      TAMB = 25oC, VIN = 0V to VCC
 Output leakage current                                                +0.05             +10               µA         Receivers disabled, VOUT = 0V to VCC
 Output voltage LOW                                                                       0.4              V          IOUT = 1.6mA
 Output voltage HIGH                                VCC - 0.6        VCC - 0.1                             V          IOUT = -1.0mA
 Driver Outputs
                                                                                                                      All driver outputs loaded with 3kΩ to GND,
 Output voltage swing                                  +5.0             +5.4                               V
                                                                                                                      TAMB = 25oC
 Output resistance                                     300                                                 Ω          VCC = V+ = V- = 0V, TOUT = +2V
 Output short-circuit current                                           +35              +60              mA          VOUT = 0V
                                                                                                                      VCC = 0V or 3.0V to 5.5V,
 Output leakage current                                                                  +25               µA
                                                                                                                      VOUT = +12V, drivers disabled



                                                                                    REV 1.0.3                                                                        2/21
                                                                                                SP3222E / SP3232E

Electrical Characteristics (Continued)
Unless otherwise noted, the following specifications apply for VCC = 3.0V to 5.5V with TAMB = TMIN to TMAX, typical values
apply at VCC = 3.3V or 5.0V and TAMB = 25°C.
            PARAMETERS                           MIN.   TYP.       MAX.    UNITS                     CONDITIONS
 Receiver Inputs
 Input voltage range                             -15                 15      V
 Input threshold LOW                             0.6    1.2                  V     VCC = 3.3V
 Input threshold LOW                             0.8    1.5                  V     VCC = 5.0V
 Input threshold HIGH                                   1.5         2.4      V     VCC = 3.3V
 Input threshold HIGH                                   1.8         2.4      V     VCC = 5.0V
 Input hysteresis                                       0.3                  V
 Input resistance                                 3      5           7       kΩ
 Timing Characteristics
 Maximum data rate                               120    235                 kbps   RL = 3kΩ, CL = 1000pF, one driver switching
 Driver propagation delay, tPHL                         1.0                  µs    RL = 3kΩ, CL = 1000pF
 Driver propagation delay, tPLH                         1.0                  µs    RL = 3kΩ, CL = 1000pF
 Receiver propagation delay, tPHL                       0.3                  µs    Receiver input to receiver output, CL = 150pF
 Receiver propagation delay, tPLH                       0.3                  µs    Receiver input to receiver output, CL = 150pF
 Receiver output enable time                            200                  ns
 Receiver output disable time                           200                  ns
 Driver skew                                            100         500      ns    | tPHL - tPLH |, TAMB = 25°C
 Receiver skew                                          200        1000      ns    | tPHL - tPLH |
                                                                                   VCC = 3.3V, RL = 3kΩ, CL = 1000pF,
 Transition-region slew rate                                         30     V/µs   TAMB = 25°C, measurements taken from
                                                                                   -3.0V to 3.0V or 3.0V to -3.0V

NOTE:
2. Driver input hysteresis is typically 250mV.




                                                               REV 1.0.3                                                     3/21
                                                                                                                                                                           SP3222E / SP3232E

   Typical Performance Characteristics
   Unless otherwise noted, the following performance characteristics apply for VCC = 3.3V, 120kbps data rate, all drivers
   loaded with 3kΩ, 0.1µF charge pump capacitors, and TAMB = 25°C.

                                 6                                                                                                              14

                                                                                                                                                12
Transmitter Output Voltage [V]




                                 4
                                                                                                                                                10
                                 2                                                                     Vout+




                                                                                                                           Slew Rate [V /µs ]
                                                                                                       Vout-                                     8

                                 0
                                                                                                                                                 6
                                      0   500   1000                               1500        2000
                                 -2                                                                                                              4
                                                                                                                                                                                                  +Slew
                                                                                                                                                                                                  -Slew
                                 -4                                                                                                              2


                                                                                                                                                 0
                                 -6                                                                                                                  0       500     1000        1500      2000           2330
                                                Load Capacitance [pF]                                                                                              Load Capacitance [pF]


     Figure 1: Transmitter Output Voltage vs Load Capacitance                                                                                        Figure 2: Slew Rate vs Load Capacitance
                   for the SP3222E and SP3232E                                                                                                            for the SP3222E and SP3232E



                                                                              50

                                                                                              118KHz
                                                                              45
                                                                                              60KHz
                                                                                              10KHz
                                                                              40

                                                                              35

                                                                              30
                                                       Suppl y Current [mA]




                                                                              25


                                                                              20

                                                                              15

                                                                              10

                                                                               5


                                                                               0
                                                                                    0           500        1000               1500                        2000      2330
                                                                                                         Load Capacitance [pF]


                                                                                        Figure 3: Supply Current VS. Load Capacitance
                                                                                                    when Transmitting Data




                                                                                                               REV 1.0.3                                                                                    4/21
                                                                                                       SP3222E / SP3232E

Pin Functions


                                                                                                          Pin Number
                                                                                                      SP3222E
  Pin Name                              Pin Function / Description
                                                                                                            SSOP       SP3232E
                                                                                                SOIC
                                                                                                           TSSOP
             Receiver Enable. Apply logic LOW for normal operation.
    EN                                                                                           1              1         -
             Apply logic HIGH to disable the receiver outputs (high-Z state).
    C1+      Positive terminal of the voltage doubler charge-pump capacitor                      2              2         1
    V+       5.5V output generated by the charge pump                                            3              3         2
    C1-      Negative terminal of the voltage doubler charge-pump capacitor                      4              4         3
    C2+      Positive terminal of the inverting charge-pump capacitor                            5              5         4
    C2-      Negative terminal of the inverting charge-pump capacitor                            6              6         5
     V-      -5.5V output generated by the charge pump                                           7              7         6
   T1OUT     RS-232 driver output                                                                15             17       14
   T2OUT     RS-232 driver output                                                                8              8         7
    R1IN     RS-232 receiver input                                                               14             16       13
    R2IN     RS-232 receiver input                                                               9              9         8
   R1OUT     TTL/CMOS receiver output                                                            13             15       12
   R2OUT     TTL/CMOS receiver output                                                            10             10        9
    T1IN     TTL/CMOS driver input                                                               12             13       11
    T2IN     TTL/CMOS driver input                                                               11             12       10
    GND      Ground                                                                              16             18       15
    VCC      3.0V to 5.5V supply voltage                                                         17             19       16
             Shutdown Control Input. Drive HIGH for normal device operation.
   SHDN                                                                                          18             20        -
             Drive LOW to shutdown the drivers (high-Z output) and the on-board power supply.
    N.C.     No connect                                                                          -          11, 14        -


                                                  Table 1: Device Pin Description




                                                                  REV 1.0.3                                                   5/21
                                                                                  SP3222E / SP3232E

Pinouts


      EN       1               20 SHDN                         EN        1               18 SHDN
     C1+ 2                      19 VCC                         C1+ 2                     17 VCC
      V+       3                18 GND                          V+       3               16 GND
     C1-       4                17    T1OUT                    C1-       4               15   T1OUT
     C2+       5   SP3222E     16     R1IN                     C2+       5     SP3222E   14   R1IN
     C2-       6                15 R1OUT                       C2-       6               13 R1OUT
          V-   7                14    N.C.                         V-    7               12 T1IN

  T2OUT        8                13 T1IN                      T2OUT       8               11 T2IN
    R2IN       9               12 T2IN                        R2IN       9               10   R2OUT
  R2OUT 10                     11     N.C.
                                                                                SOIC

                   SSOP/TSSOP
                             Figure 4: Pinout Configurations for the SP3222E




                              C1+ 1                           16 VCC
                                V+ 2                          15 GND
                              C1-     3                       14 T1OUT
                              C2+     4      SP3232E          13 R1IN
                              C2-     5                       12 R1OUT
                                V-    6                        11 T1IN

                         T2OUT        7                       10        T2IN
                             R2IN     8                        9        R2OUT



                             Figure 5: Pinout Configurations for the SP3232E


                                                 REV 1.0.3                                           6/21
                                                                                                                                          SP3222E / SP3232E

Typical Operating Circuits
                                    VCC                                                                                                 VCC

          +                          19                                                                   +                              17
    C5        0.1µF                                                                                  C5       0.1µF
                                    VCC                                                                                                 VCC
                        2 C1+                              3                                                           2 C1+                                3
          +                                         V+                 +                                  +                                            V+              +
   C1         0.1µ F                                             *C3       0.1µF                     C1       0.1µF                                              *C3       0.1µF
                        4 C1-                                                                                          4 C1-
                        5 C2+     SP3222E           V-     7                                                           5 C2+      SP3222E              V-   7
          +                                                                                               +
   C2         0.1µF                SSOP                          C4        0.1µF                 C2           0.1µF                SOIC                          C4        0.1µF
                        6 C2-      TSSOP                               +                                               6 C2-                                           +

                       13 T1IN                T1OUT        17                                                         12 T1IN                    T1OUT      15
  LOGIC                                                            RS-232                       LOGIC                                                               RS-232
 INPUTS                12 T2IN                T2OUT        8       OUTPUTS                     INPUTS                 11 T2IN                    T2OUT      8       OUTPUTS


                       15 R1OUT                  R1IN      16                                                         13 R1OUT                       R1IN   14

  LOGIC                                    5kΩ                         RS-232                LOGIC                                             5kΩ                     RS-232
OUTPUTS                                                                INPUTS              OUTPUTS                                                                     INPUTS
                       10 R2OUT                  R2IN      9                                                          10 R2OUT                       R2IN   9
                                           5kΩ                                                                                                 5kΩ
                        1 EN                               20                                                          1 EN                                 18
                                                 SHDN                                                                                                SHDN

                                    GND                                                                                                 GND
                                                           *can be returned to                                                                              *can be returned to
                                      18                    either VCC or GND                                                             16                 either VCC or GND


                                                   Figure 6: SP3222E Typical Operating Circuits


                                                                                     VCC

                                                    +                                 16
                                              C5        0.1µF
                                                                                     VCC
                                                                  1 C1+                                         2
                                                    +                                                     V+                +
                                             C1         0.1µF                                                         *C3       0.1µF
                                                                  3 C1-
                                                                  4 C2+       SP3232E                     V-
                                                                                                                6
                                                    +
                                             C2          0.1µF                                                         C4       0.1µF
                                                                  5 C2-                                                     +


                                                                 11 T1IN                         T1OUT           14
                                            LOGIC                                                                        RS-232
                                           INPUTS                10 T2IN                         T2OUT           7       OUTPUTS


                                                                 12 R1OUT                             R1IN      13

                                            LOGIC                                              5kΩ                          RS-232
                                          OUTPUTS                                                                           INPUTS
                                                                 9 R2OUT                              R2IN      8
                                                                                               5kΩ



                                                                                     GND
                                                                                                                *can be returned to
                                                                                         15                      either VCC or GND

                                                   Figure 7: SP3232E Typical Operating Circuit



                                                                                   REV 1.0.3                                                                                 7/21
                                                                                                                SP3222E / SP3232E

Applications Information
The     SP3222E / SP3232E transceivers meet the                           Figure 10 shows the test results where one driver
EIA/TIA-232 and ITU-T V.28/V.24 communication protocols                   was active at 235kbps and all drivers loaded with an
and can be implemented in battery-powered, portable,                      RS-232 receiver in parallel with 1000pF capacitors. A
or hand-held applications such as notebook or palmtop                     solid RS-232 data transmission rate of 120kbps provides
computers. The SP3222E / SP3232E devices feature                          compatibility with many designs in personal computer
MaxLinear’s proprietary on-board charge pump circuitry                    peripherals and LAN applications.
that generates 5.5V for RS-232 voltage levels from a single
3.0V to 5.5V power supply. This series is ideal for 3.3V-only
systems, mixed 3.3V to 5.5V systems, or 5.0V-only systems
                                                                                                            VCC
that require true RS-232 performance. The SP3222E
/ SP3232E devices can operate at a typical data rate of
                                                                                    +
235kbps when fully loaded.                                                  C5          0.1µF
                                                                                                            VCC
The SP3222E and SP3232E are 2-driver / 2-receiver                                                C1+                          V+
                                                                                    +                                                         +
devices ideal for portable or hand-held applications. The                   C1          0.1µF                                            C3       0.1µF
SP3222E features a 1µA shutdown mode that reduces                                                C1-
power consumption and extends battery life in portable                                           C2+     SP3222E              V-
systems. Its receivers remain active in shutdown mode,
                                                                           C2
                                                                                    +
                                                                                        0.1µF
                                                                                                         SP3232E                         C4       0.1µF
allowing external devices such as modems to be monitored                                                                                      +
                                                                                                 C2-
using only 1µA supply current.
                                                                           LOGIC                 TxIN                   TxOUT
                                                                          INPUTS

Theory of Operation
                                                                        LOGIC                    RxOUT                   RxIN
The SP3222E/SP3232E series is made up of three basic
                                                                      OUTPUTS
circuit blocks:                                                                                                   5kΩ
                                                                                                 EN*
1. Drivers                                                                                                              *SHDN           VCC
2. Receivers                                                                                                GND
3. The MaxLinear proprietary charge pump
                                                                                                                                        1000pF

                                                                                                                        * SP3222E only
  Drivers
  The drivers are inverting level transmitters that convert           Figure 8: SP3222E/SP3232E Driver Loopback Test Circuit
  TTL or CMOS logic levels to 5.0V EIA/TIA-232 levels
  with an inverted sense relative to the input logic levels.
  Typically, the RS-232 output voltage swing is 5.4V with
  no load and 5V minimum fully loaded. The driver outputs                                         [        T              ]
  are protected against infinite short-circuits to ground
  without degradation in reliability. Driver outputs will meet
                                                                                                            T
  EIA/TIA-562 levels of ±3.7V with supply voltages as low                 T1 IN 1
  as 2.7V.
  The drivers can guarantee a data rate of 120kbps fully
                                                                      T1 OUT 2
  loaded with 3kΩ in parallel with 1000pF, ensuring
                                                                                                            T
  compatability with PC-to-PC communication software.
                                                                                                            T
  The slew rate of the driver is internally limited to a maximum
  of 30V/µs in order to meet the EIA standards (EIA                  R1 OUT 3
  RS-232D 2.1.7, Paragraph 5). The transition of the loaded
  output from HIGH to LOW also meet the monotonicity                                     Ch1 5.00V Ch2 5.00V M 5.00µs    Ch1       0V
                                                                                         Ch3 5.00V
  requirements of the standard.
  Figure 8 shows a loopback test circuit used to test the                        Figure 9: Loopback Test results at 120kbps
  RS-232 Drivers. Figure 9 shows the test results of the
  loopback circuit with all drivers active at 120kbps with
  RS-232 loads in parallel with a 1000pF capacitor.


                                                              REV 1.0.3                                                                            8/21
                                                                                                          SP3222E / SP3232E

Applications Information (Continued)
                                                                             Since receiver input is usually from a transmission line
                    [         T            ]                                 where long cable lengths and system interference can
                                                                             degrade the signal, the inputs have a typical hysteresis
                              T
                                                                             margin of 300mV. This ensures that the receiver is
  T1 IN 1                                                                    virtually immune to noisy transmission lines. Should
                                                                             an input be left unconnected, an internal 5kΩ pulldown
                                                                             resistor to ground will commit the output of the receiver to
T1 OUT 2
                                                                             a HIGH state.
                              T

                              T
                                                                             Charge Pump
R1 OUT 3
                                                                             The charge pump is an MaxLinear-patended design (U.S.
            Ch1 5.00V Ch2 5.00V M 2.50µs Ch1    0V                           5,306,954) and uses a unique approach compared to older
            Ch3 5.00V                                                        less-efficient designs. The charge pump still requires four
                                                                             external capacitors, but uses a four-phase voltage shifting
       Figure 10: Loopback Test results at 235kbps                           technique to attain symmetrical 5.5V power supplies. The
                                                                             internal power supply consists of a regulated dual charge
  The SP3222E driver’s output stages are turned off (tri-                    pump that provides output voltages of ±5.5V regardless
  state) when the device is in shutdown mode. When the                       of the input voltage (VCC) over the 3.0V to 5.5V range.
  power is off, the SP3222E device permits the outputs to                    In most circumstances, decoupling the power supply can
  be driven up to ±12V. The driver’s inputs do not have pull-                be achieved adequately using a 0.1µF bypass capacitor
  up resistors. Designers should connect unused inputs to                    at C5 (refer to figures 6 and 7). In applications that are
  VCC or GND.                                                                sensitive to power-supply noise, decouple Vcc to ground
  In the shutdown mode, the supply current falls to less than                with a capacitor of the same value as charge-pump
  1µA, where SHDN = LOW. When the SP3222E device is                          capacitor C1. Physically connect bypass capcitors as
  shut down, the device’s driver outputs are disabled (tri-                  close to the IC as possible.
  stated) and the charge pumps are turned off with V+ pulled                 The charge pump operates in a discontinuous mode
  down to VCC and V- pulled to GND. The time required to                     using an internal oscillator. If the output voltages are less
  exit shutdown is typically 100µs. Connect SHDN to VCC if                   than a magnitude of 5.5V, the charge pump is enabled.
  the shutdown mode is not used.                                             If the output voltages exceed a magnitude of 5.5V, the
                                                                             charge pump is disabled. This oscillator controls the
                                                                             four phases of the voltage shifting. A description of each
  Receivers                                                                  phase follows.
  The Receivers convert EIA/TIA-232 levels to TTL or
  CMOS logic output levels. The SP3222E receivers have
  an inverting tri-state output. These receiver outputs                      Phase 1: VSS charge storage
  (RxOUT) are tri-stated when the enable control EN =                        During this phase of the clock cycle, the positive side of
  HIGH. In the shutdown mode, the receivers can be active                    capacitors C1 and C2 are initially charged to VCC. Cl+ is
  or inactive. EN has no effect on TxOUT. The truth table                    then switched to GND and the charge in C1– is transferred
  logic of the SP3222E driver and receiver outputs can be                    to C2–. Since C2+ is connected to VCC, the voltage
  found in Table 2.                                                          potential across capacitor C2 is now 2 times VCC.

     SHDN               EN          TxOUT            RxOUT
        0               0           Tri-state         Active                 Phase 2: VSS transfer
        0               1           Tri-state        Tri-state               Phase two of the clock connects the negative terminal
        1               0            Active           Active                 of C2 to the VSS storage capacitor and the positive
                                                                             terminal of C2 to GND. This transfers a negative
        1               1            Active          Tri-state
                                                                             generated voltage to C3. This generated voltage is
                                                                             regulated to a minimum voltage of -5.5V.
                                                                             Simultaneous with the transfer of the voltage to C3, the
            Table 2: SP3222E Truth Table Logic
                                                                             positive side of capacitor C1 is switched to VCC and the
             for Shutdown and Enable Control
                                                                             negative side is connected to GND.


                                                                 REV 1.0.3                                                            9/21
                                                                                                                            SP3222E / SP3232E

Applications Information (Continued)
 Phase 3: VDD charge storage                                                                             [              T          ]

 The third phase of the clock is identical to the first phase;                     +6V
 the charge transferred in C1 produces –VCC in the
 negative terminal of C1, which is applied to the negative                       a) C2+
 side of capacitor C2. Since C2+ is at VCC, the voltage
 potential across C2 is 2 times VCC.
                                                                            GND 1                                       T

                                                                            GND 2
 Phase 4: VDD transfer
                                                                                 b) C2-
 The fourth phase of the clock connects the negative
 terminal of C2 to GND, and transfers this positive
                                                                                                                        T
 generated voltage across C2 to C4, the VDD storage                                 -6V
                                                                                          Ch1 2.00V Ch2 2.00V M 1.00µs Ch1 5.48V
 capacitor.     This voltage is regulated to 5.5V.         At
 this voltage, the internal oscillator is disabled.
                                                                                                Figure 13: Charge Pump Waveforms
 Simultaneous with the transfer of the voltage to C4, the
 positive side of capacitor C1 is switched to VCC and the
 negative side is connected to GND, allowing the charge pump
 cycle to begin again. The charge pump cycle will continue                                         VCC = +5V
 as long as the operational conditions for the internal
 oscillator are present.
                                                                                                                    +5V         C4
 Since both V+ and V– are separately generated from VCC,                                       +                    +
                                                                                                                               +       –   VDD Storage Capacitor
 in a no–load condition V+ and V– will be symmetrical.                                    C1
                                                                                               –
                                                                                                               C2
                                                                                                                    –          –       +
                                                                                                                                           VSS Storage Capacitor
 Older charge pump approaches that generate V– from V+
 will show a decrease in the magnitude of V– compared to                                       –5V                  –5V            C3

 V+ due to the inherent inefficiencies in the design.
 The clock rate for the charge pump typically operates at
                                                                                                   Figure 14: Charge Pump - Phase 3
 greater than 250kHz. The external capacitors can be as
 low as 0.1µF with a 16V breakdown voltage rating.
                VCC = +5V                                                                          VCC = +5V



                                 +5V     C4                                                                     +5.5V           C4
                                         +    –   VDD Storage Capacitor                                                        +       –   VDD Storage Capacitor
            +                    +                                                             +                    +
       C1                   C2                                                            C1                   C2
            –                    –       –    +                                                –                    –          –       +
                                                  VSS Storage Capacitor                                                                    VSS Storage Capacitor
            –5V                  –5V         C3                                                                                    C3




                Figure 11: Charge Pump - Phase 1                                                   Figure 15: Charge Pump - Phase 4



                VCC = +5V



                                         C4
                                         +    –   VDD Storage Capacitor
            +                    +
       C1                   C2
            –                    –       –    +
                                                  VSS Storage Capacitor
                                             C3
                                 -5.5V



                Figure 12: Charge Pump - Phase 2


                                                                     REV 1.0.3                                                                            10/21
                                                                                                      SP3222E / SP3232E

ESD Tolerance                                                   discharge it to an integrated circuit. The simulation is
                                                                performed by using a test model as shown in Figure 16.
The SP3222E / SP3232E Series incorporates ruggedized
                                                                This method will test the IC’s capability to withstand an ESD
ESD cells on all driver output and receiver input pins. The
                                                                transient during normal handling such as in manufacturing
ESD structure is improved over our previous family for more
                                                                areas where the IC’s tend to be handled frequently.
rugged applications and environments sensitive to electro-
static discharges and associated transients. The improved       The IEC61000-4-2, formerly IEC801-2, is generally used
ESD tolerance is at least ±15kV without damage or latch-        for testing ESD on equipment and systems. For system
up.                                                             manufacturers, they must guarantee a certain amount of
                                                                ESD protection since the system itself is exposed to the
There are different methods of ESD testing applied:
                                                                outside environment and human presence. The premise
        a) MIL-STD-883, Method 3015.7                           with IEC61000-4-2 is that the system is required to withstand
        b) IEC61000-4-2 Air-Discharge                           an amount of static electricity when ESD is applied to
                                                                points and surfaces of the equipment that are accessible
        c) IEC61000-4-2 Direct Contact                          to personnel during normal usage. The transceiver IC
The Human Body Model has been the generally accepted            receives most of the ESD current when the ESD source
ESD testing method for semiconductors. This method is           is applied to the connector pins. The test circuit for
also specified in MIL-STD-883, Method 3015.7 for ESD            IEC61000-4-2 is shown on Figure 17. There are two
testing. The premise of this ESD test is to simulate the        methods within IEC61000-4-2, the Air Discharge method
human body’s potential to store electro-static energy and       and the Contact Discharge method.


                               RC                                    RS


                                           SW1                                               SW2

                                                                                                             Device
                 DC Power                                 CS                                                 Under
                  Source                                                                                      Test




                                    Figure 16: ESD Test Circuit for Human Body Model



                                                                          Contact-Discharge Model

                               RC                                    RS         RV


                                           SW1                                               SW2

                                                                                                             Device
                 DC Power                                 CS                                                 Under
                  Source                                                                                      Test




                                                               R S and RV add up to 330Ω for IEC61000-4-2.



                                      Figure 17: ESD Test Circuit for IEC61000-4-2



                                                         REV 1.0.3                                                      11/21
                                                                                                    SP3222E / SP3232E

ESD Tolerance (Continued)




                                                                        I→
With the Air Discharge Method, an ESD voltage is applied to
the equipment under test (EUT) through air. This simulates              30A
an electrically charged person ready to connect a cable onto
the rear of the system only to find an unpleasant zap just
before the person touches the back panel. The high energy
potential on the person discharges through an arcing path to
the rear panel of the system before he or she even touches              15A
the system. This energy, whether discharged directly or
through air, is predominantly a function of the discharge
current rather than the discharge voltage. Variables with an
air discharge such as approach speed of the object carrying
the ESD potential to the system and humidity will tend to                0A
change the discharge current. For example, the rise time of
the discharge current varies with the approach speed.
                                                                                   t = 0ns                     t = 30ns
The Contact Discharge Method applies the ESD current                                               t→
directly to the EUT. This method was devised to reduce
the unpredictability of the ESD arc. The discharge current
rise time is constant since the energy is directly transferred            Figure 18: ESD Test Waveform for IEC61000-4-2
without the air-gap arc. In situations such as hand held
systems, the ESD charge can be directly discharged to the          For the Human Body Model, the current limiting resistor
equipment from a person already holding the equipment.             (RS) and the source capacitor (CS) are 1.5kΩ an 100pF,
The current is transferred on to the keypad or the serial port     respectively.   For IEC-61000-4-2, the current limiting
of the equipment directly and then travels through the PCB         resistor (RS) and the source capacitor (CS) are 330Ω an
and finally to the IC.                                             150pF, respectively.
The circuit model in Figures 16 and 17 represent the typical       The higher CS value and lower RS value in the IEC61000-
ESD testing circuit used for all three methods. The CS is          4-2 model are more stringent than the Human Body Model.
initially charged with the DC power supply when the first          The larger storage capacitor injects a higher voltage to the
switch (SW1) is on. Now that the capacitor is charged,             test point when SW2 is switched on. The lower current
the second switch (SW2) is on while SW1 switches off.              limiting resistor increases the current charge onto the test
The voltage stored in the capacitor is then applied through        point.
RS, the current limiting resistor, onto the device under test
(DUT). In ESD tests, the SW2 switch is pulsed so that the
device under test receives a duration of voltage.



                                                                                             IEC61000-4-2
    DEVICE PIN TESTED               HUMAN BODY MODEL
                                                                        Air Discharge         Direct Contact          Level
         Driver Outputs                     ±15kV                          ±15kV                  ±8kV                    4
        Receiver Inputs                     ±15kV                          ±15kV                  ±8kV                    4



                                         Table 3: Transceiver ESD Tolerance Levels




                                                            REV 1.0.3                                                         12/21
                                                     SP3222E / SP3232E

Mechanical Dimensions
SSOP20
                  Top View




                    Side View               Front View




                                                  Drawing No:   POD-00000119
                                                  Revision:     A




                                REV 1.0.3                                      13/21
                                                 SP3222E / SP3232E

Mechanical Dimensions
SSOP16
              Top View




                Side View               Front View




                                              Drawing No:   POD-00000116
                                              Revision:     A




                            REV 1.0.3                                      14/21
                                                         SP3222E / SP3232E

Mechanical Dimensions
WSOIC16

                        Top View




                        Side View               Front View




                                                             Drawing No: POD-00000115

                                                             Revision:   B




                                    REV 1.0.3                                           15/21
                                                       SP3222E / SP3232E

Mechanical Dimensions
WSOIC18

                        Top View




                        Side View               Front View




                                                       Drawing No: POD-00000118

                                                       Revision:   B




                                    REV 1.0.3                                     16/21
                                                         SP3222E / SP3232E

Mechanical Dimensions
NSOIC16

                        Top View




                        Side View               Front View




                                                     Drawing No:   POD-00000114
                                                     Revision:     A




                                    REV 1.0.3                                     17/21
                                                      SP3222E / SP3232E

Mechanical Dimensions
TSSOP16
                 Top View




                    Side View               Front View




                                                Drawing No:       POD-00000117
                                                Revision:     A




                                REV 1.0.3                                        18/21
                                                       SP3222E / SP3232E

Mechanical Dimensions
TSSOP20
                        Top View




                        Side View               Front View




                                                    Drawing No:   POD-00000120
                                                    Revision:     A




                                    REV 1.0.3                                    19/21
                                                                                                                         SP3222E / SP3232E

Ordering Information(1)
 Part Number                      Operating Temperature Range                      Package                  Packaging Method               Lead-Free(2)

 SP3222E
 SP3222ECA-L/TR                            0°C to +70°C                        20 Pin SSOP                            Reel                    Yes
 SP3222ECT-L/TR                            0°C to +70°C                       18 Pin WSOIC                            Reel                    Yes
 SP3222ECY-L/TR                            0°C to +70°C                       20 Pin TSSOP                            Reel                    Yes
 SP3222EEA-L/TR                           -40°C to +85°C                       20 Pin SSOP                            Reel                    Yes
 SP3222EEY-L/TR                           -40°C to +85°C                      20 Pin TSSOP                            Reel                    Yes
 SP3232E
 SP3232ECA-L                               0°C to +70°C                        16 Pin SSOP                            Tube                    Yes
 SP3232ECA-L/TR                            0°C to +70°C                        16 Pin SSOP                            Reel                    Yes
 SP3232ECN-L                               0°C to +70°C                        16 Pin NSOIC                           Tube                    Yes
 SP3232ECN-L/TR                            0°C to +70°C                        16 Pin NSOIC                           Reel                    Yes
 SP3232ECT-L/TR                            0°C to +70°C                       16 Pin WSOIC                            Reel                    Yes
 SP3232ECY-L                               0°C to +70°C                       16 Pin TSSOP                            Tube                    Yes
 SP3232ECY-L/TR                            0°C to +70°C                       16 Pin TSSOP                            Reel                    Yes
 SP3232EEA-L                              -40°C to +85°C                       16 Pin SSOP                            Tube                    Yes
 SP3232EEA-L/TR                           -40°C to +85°C                       16 Pin SSOP                            Reel                    Yes
 SP3232EEN-L                              -40°C to +85°C                       16 Pin NSOIC                           Tube                    Yes
 SP3232EEN-L/TR                           -40°C to +85°C                       16 Pin NSOIC                           Reel                    Yes
 SP3232EET-L                              -40°C to +85°C                      16 Pin WSOIC                            Tube                    Yes
 SP3232EET-L/TR                           -40°C to +85°C                      16 Pin WSOIC                            Reel                    Yes
 SP3232EEY-L                              -40°C to +85°C                      16 Pin TSSOP                            Tube                    Yes
 SP3232EEY-L/TR                           -40°C to +85°C                      16 Pin TSSOP                            Reel                    Yes
NOTE:
1. Refer to www.maxlinear.com/SP3222E and www.maxlinear.com/SP3232E for most up-to-date Ordering Information.
2. Visit www.maxlinear.com for additional information on Environmental Rating.




Selection Table

                                                 RS-232            RS-232                External
     MODEL             Power Supplies                                                                     Shutdown           TTL 3-State       # of Pins
                                                 Drivers          Receivers            Components
    SP3222E             +3.0V to +5.5V               2                 2               4 Capacitors             Yes             Yes             18, 20
    SP3232E             +3.0V to +5.5V               2                 2               4 Capacitors             No               No               16




                                                                           REV 1.0.3                                                                   20/21
                                                                                                                                                                   SP3222E / SP3232E

Revision History
            Revision                                   Date                     Description

            08/22/05                                     --                     Legacy Sipex Datasheet
            12/08/10                                  1.0.0                     Convert to Exar Format and update ordering information.
                                                                                Correct type error to driver Transition-Region Slew Rate
            03/14/13                                  1.0.1
                                                                                conditions.
                                                                                Correct SP3222E nSOIC pinout to SOIC. Updated to MaxLinear logo. Up-
            10/16/17                                  1.0.2
                                                                                dated format and ordering information table.
                                                                                Change RxIN absolute maximum from ±15V to ±25V. Update Ordering
            04/22/20                                  1.0.3
                                                                                Information.




                                          Corporate Headquarters:
                                          5966 La Place Court
                                          Suite 100
                                          Carlsbad, CA 92008
                                          Tel.:+1 (760) 692-0711
                                          Fax: +1 (760) 444-8598
                                          www.maxlinear.com


The content of this document is furnished for informational use only, is subject to change without notice, and should not be construed as a commitment by MaxLinear, Inc. MaxLinear, Inc. assumes no re-
sponsibility or liability for any errors or inaccuracies that may appear in the informational content contained in this guide. Complying with all applicable copyright laws is the responsibility of the user. With-
out limiting the rights under copyright, no part of this document may be reproduced into, stored in, or introduced into a retrieval system, or transmitted in any form or by any means (electronic, mechanical,
photocopying, recording, or otherwise), or for any purpose, without the express written permission of MaxLinear, Inc.

Maxlinear, Inc. does not recommend the use of any of its products in life support applications where the failure or malfunction of the product can reasonably be expected to cause failure of the life support
system or to significantly affect its safety or effectiveness. Products are not authorized for use in such applications unless MaxLinear, Inc. receives, in writing, assurances to its satisfaction that: (a) the risk
of injury or damage has been minimized; (b) the user assumes all such risks; (c) potential liability of MaxLinear, Inc. is adequately protected under the circumstances.

MaxLinear, Inc. may have patents, patent applications, trademarks, copyrights, or other intellectual property rights covering subject matter in this document. Except as expressly provided in any written
license agreement from MaxLinear, Inc., the furnishing of this document does not give you any license to these patents, trademarks, copyrights, or other intellectual property.

MaxLinear, the MaxLinear logo, and any MaxLinear trademarks, MxL, Full-Spectrum Capture, FSC, G.now, AirPHY and the MaxLinear logo are all on the products sold, are all trademarks of MaxLinear,
Inc. or one of MaxLinear’s subsidiaries in the U.S.A. and other countries. All rights reserved. Other company trademarks and product names appearing herein are the property of their respective owners.


© 2013 - 2020 MaxLinear, Inc. All rights reserved

SP3222E_SP3232E_DS_042220                                                                            REV 1.0.3                                                                                                 21/21
