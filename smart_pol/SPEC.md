# 6A Selectable DC-DC Buck Module with I2C Telemetry

A high-current, synchronous step-down point-of-load regulator (POLR) with integrated I2C voltage and current monitoring. Designed for a dense, single-sided 15mm x 25mm (0.6" x 1.0") footprint.

**Specifications**
* **Input Voltage:** 4.5V to 17V DC (12V nominal)
* **Output Voltages:** 1.25V, 1.8V, 2.5V, 3.3V, 5.0V (Configurable via 0402 solder jumper network)
* **Output Current:** 6A Continuous 
* **Telemetry:** I2C Voltage/Current Monitor ([Texas Instruments INA219AIDCNR](https://jlcpcb.com/parts/componentSearch?searchTxt=C87469))
* **Logic Level:** MCU-dependent via external VCC input

**Pinout (2x4 2.54mm Header Block)**
* **VIN**: Source voltage input (4.5V - 17V)
* **VOUT**: Generated voltage output
* **GND**: Common ground (Input, Output, and MCU must share this ground)
* **EN**: Enable pin (Active High)
* **VCC_IO**: Logic voltage input from MCU (powers INA219 and I2C pull-ups)
* **SDA**: I2C Data
* **SCL**: I2C Clock

**Layout & Component Footprints**
* **Buck IC:** ETA8156 (SMT)
* **Power Monitor:** INA219 (SOT-23-8 package to minimize space)
* **Power Inductor:** 7x7mm SMD shielded
* **Current Shunt:** 2512 package (10mΩ, 1W/2W)
* **Filter Capacitors:** 1206 or 1210 ceramic MLCCs for input/output
* **Passives:** 0402 sizes for I2C pull-ups, INA219 filters, and feedback resistors