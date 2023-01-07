#
# Control code for the "scsi_switcher". This is loaded on the Raspberry Pi Pico
#    https://github.com/akuker/hw_projects/scsi_switcher/
#
# Note: This code may need updates for a different LED pin for the RPi Pico "W"
#
# To load this on a Raspberry Pi Pico...
# - Launch the Thonny application
# - From the Tools menu, select Options, then Interpreter tab.
# - Set the interpreter to "Micropython (Raspberry Pi Pico)"
# - Close the options
# - Choose "Save As" from the File menu
# - A dialog should pop up asking to save on "This Computer" or "Raspberry Pi Pico"
# - Choose Pico
# - Save as main.py
# - Note: you may need to click the stop button in the main Thonny UI if there is
#   already a python app running on the Pico
#
# To remotely control the pico,
# - Connect via USB. Baud rate 115200
# - Send ASCII 0,1,2,3,4,5,6,7 on the USB serial port
# - The Pico should respond with a message
# - The Pico should also print out a message when you press buttons on the board

from machine import Pin
import time
import select
import sys

onboard_led = Pin("LED", Pin.OUT)

button0_pin = Pin(6, Pin.IN)
button1_pin = Pin(7, Pin.IN)
button2_pin = Pin(8, Pin.IN)
button3_pin = Pin(9, Pin.IN)
button4_pin = Pin(10, Pin.IN)
button5_pin = Pin(11, Pin.IN)
button6_pin = Pin(12, Pin.IN)
button7_pin = Pin(13, Pin.IN)

mux_inh_pin = Pin(14, Pin.OUT)

mux_sel_a_pin = Pin(2, Pin.OUT)
mux_sel_b_pin = Pin(3, Pin.OUT)
mux_sel_c_pin = Pin(4, Pin.OUT)
mux_sel_d_pin = Pin(5, Pin.OUT)

button_pressed = 0

def set_side_0_mux(new_state):
    mux_sel_a_pin.value(new_state & 1)
    mux_sel_b_pin.value(new_state & 2)

def set_side_1_mux(new_state):
    mux_sel_c_pin.value(new_state & 1)
    mux_sel_d_pin.value(new_state & 2)

def read_serial_input():
  if sys.stdin in select.select([sys.stdin], [], [], 0)[0]:        
    ch = sys.stdin.read(1)
    if ch == '0':
        print("command input 0")
        set_side_0_mux(0)
    elif ch == '1':
        print("command input 1")
        set_side_0_mux(1)
    elif ch == '2':
        print("command input 2")
        set_side_0_mux(2)
    elif ch == '3':
        print("command input 3")
        set_side_0_mux(3)
    elif ch == '4':
        print("command input 4")
        set_side_1_mux(0)
    elif ch == '5':
        print("command input 5")
        set_side_1_mux(1)
    elif ch == '6':
        print("command input 6")
        set_side_1_mux(2)
    elif ch == '7':
        print("command input 7")
        set_side_1_mux(3)
    else:
        print("Unknown input: " + ch)

mux_inh_pin.value(0)

next_blink = time.ticks_add(time.ticks_ms(), 1000)

while True:
    read_serial_input()
    if button0_pin.value() == button_pressed:
        print("button 0 pressed")
        set_side_0_mux(0)
    if button1_pin.value() == button_pressed:
        print("button 1 pressed")
        set_side_0_mux(1)
    if button2_pin.value() == button_pressed:
        print("button 2 pressed")
        set_side_0_mux(2)
    if button3_pin.value() == button_pressed:
        print("button 3 pressed")
        set_side_0_mux(3)
    if button4_pin.value() == button_pressed:
        print("button 4 pressed")
        set_side_1_mux(0)
    if button5_pin.value() == button_pressed:
        print("button 5 pressed")
        set_side_1_mux(1)
    if button6_pin.value() == button_pressed:
        print("button 6 pressed")
        set_side_1_mux(2)
    if button7_pin.value() == button_pressed:
        print("button 7 pressed")
        set_side_1_mux(3)

    if(time.ticks_diff(time.ticks_ms(), next_blink) > 0):
        next_blink = time.ticks_add(time.ticks_ms(), 1000)
        onboard_led.toggle()
