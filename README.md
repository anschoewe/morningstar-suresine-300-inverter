# Getting Started
Before compiling code, make sure you have the correct path to your MODBUS adapter.  On my Mac it was /dev/tty.usbserial-DO001BL8
Also, make sure you have libmodbus installed.

# Install libmodbus on Mac
Using homebrew...

```
brew update
brew install libmodbus
```

# Compile code with...

```
g++ `pkg-config --cflags --libs libmodbus` suresine.cpp -o suresine && chmod +x suresine
```

# Run
`./suresign`

# Commit Changes
The light will turn red on the inverter signaling the configuration changed.  
1. You will now need to restart the invert for the change to take effect.
1. Disconnect DC power to the inverter.
1. Make sure the DIP #2 is up/on.  This signals to the inverter you want to use your custom value
1. Add power back to the invert
1. Optionally, run the program again to see that the changes were saved in your registers

# Helpful Links
- Morningstar official documentation for changing LVD and LVR: http://support.morningstarcorp.com/wp-content/uploads/2014/07/SI.APP_.LVD-Adjustment.02.EN_.pdf
- libmodbus documentation: http://libmodbus.org/docs/v3.1.4/modbus_write_register.html
- Example blog showing example of how to connect to MorningStar SureSine using libmodbus on Mac/Linux: https://westyd1982.wordpress.com/2010/03/26/linux-and-mac-os-x-software-to-read-data-from-the-sunsaver-mppt-using-modbus/

