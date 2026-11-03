# Spacedock v5 notes (from review of spacedock_one `hw/v4`)

Source: `spacedock_one/hw/v4` (branch `base_holder`), JLCPCB BOM + netlist exported with kicad-cli.
Nothing in spacedock_one was modified.

## 1. Is the INA the expensive part? No.

v4 is already chip-down 3-channel: `U701`, `U702` are INA3221 (C181255, Extended, $2.447 each, 6 channels total).

| Item | Qty | Total | Share of $97.67 BOM |
|---|---|---|---|
| LMH0344SQE (SDI EQ) | 4 | $38.54 | 39% |
| LMH0302SQX (SDI driver) | 4 | $24.09 | 25% |
| HSEC8 card connector | 2 | $10.85 | 11% |
| INA3221 | 2 | $4.89 | 5% |
| MCP23017 | 2 | $4.50 | 5% |
| TPS5430 (5 bucks) | 5 | $3.40 | 3% |

BOM prices are from the local JLCPCB DB; passives with no LCSC number are not counted.

Replacing the INA3221s with smart_pol modules would not save money:
- INA219 (C87469) is $1.05 each, so one per rail on 5 rails is $5.26, against $4.89 for two INA3221s. The INA219 is also Extended.
- A smart_pol module (ETA8156 + 7x7 inductor + 2512 shunt + 1206 caps) costs more per rail than TPS5430 ($0.68) + 4x4 inductor + SS34.
- smart_pol only pays off if the 6 A capability is needed.

Cheapest real saving: nothing in the power section. The SDI chips are 64% of the BOM.

Recommendation: keep the v4 bucks and INA3221s. If smart_pol modules are wanted for the 3.3 V or 5 V rail (current headroom), fit them with INA219 DNP and keep the INA3221 channel.

## 2. 3.3 V held up with only USB cables plugged in

Rails (from the netlist):
- `VCC` is the system 3.3 V. It comes from U708 (TPS5430) off +12 V, and U708 EN is left floating (always on).
- `DUT_3v3` is the switched card rail (U704, enabled by `3v3_ENABLE`).
- USB-C VBUS (`J707`) goes only to test point TP728. It does not power anything, so the CH347F (U712, VCC = `VCC`) is unpowered when 12 V is off.
- The Pico's diodes are correct: D719 is VCC to VSYS and D726 is VCC to the Pico 3V3 pin. Both block Pico to VCC.

Problem: the diodes only protect the supply pins. Pico GPIOs are push-pull at the Pico's own 3.3 V, and they connect to ICs whose supply is VCC (off). Their ESD clamps then lift VCC through the series resistors:
- GP8 UART TX through R800 to CH347F RXD0.
- GP7 SPI_DATA_OUT through R809 to CH347F MOSI. SPI_DATA_IN through R811 to MISO, SPI_CLK through R813 to SCLK. I2C through R814 and R815 to SDA/SCL.
- CH347F is the main suspect because it has no supply at all with 12 V off. Also MCP23017 (U710/U721) and the INA3221s.
- GPIO18-22, GP10-13 and the SPI/I2C/SEL lines go to the card connector. If a card is plugged, the card's input clamps pull `DUT_3v3` up through pins 21-26 even with `3v3_ENABLE` low. The MagJack center taps (J702.3/.6) are also on `DUT_3v3`.

RS-232 stage specifically (U711 MAX3232, J716):
- `T2IN` is tied to GND and the unused R2/T2 pins are floating, which is fine. VS+/VS- caps go to GND, which is fine.
- No direct path to `DUT_3v3`. `T1OUT`/`R1IN` only go to J716.
- The only RS-232 path to VCC is a powered DUT driving R1IN while VCC is off, and the MAX3232's R1OUT then feeding CH347F RXD1. That is weak, so I rate the RS-232 stage as a secondary suspect. Confirm on the bench by unplugging J716.

Bench check (12 V off, one cable at a time): plug only the Pico micro-USB and measure `VCC`. Then plug only USB-C. The one that makes VCC rise is the culprit.

v5 fix options (cheap first):
1. Power CH347F from a small LDO off USB-C VBUS (e.g. XC6206 3.3 V, Basic) OR'd with VCC through a Schottky, so it is never unpowered while the Pico drives it.
2. Replace the 4-5 series resistors to the CH347F with 74LVC1G125 style buffers, or add an analog switch (e.g. 74CBTLV) powered from VCC.
3. For the card connector: gate Pico outputs to the card with a bus switch powered from `DUT_3v3`, so they go high-Z when the rail is off.
4. Tie U708 EN to a Pico GPIO / the 12 V presence, so VCC is defined.

## 3. v5 design status

Not started in KiCad. The BOM analysis shows no cost win in replacing the bucks, and the back-feed fixes need your pick of option. Waiting on direction.
