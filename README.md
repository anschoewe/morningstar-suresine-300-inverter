# Compile code with...
cc `pkg-config --cflags --libs libmodbus` suresine.c -o suresine

# Run
chmod +x suresign
./suresign

# Helpful Links
- Morningstar official documentation for changing LVD and LVR: http://support.morningstarcorp.com/wp-content/uploads/2014/07/SI.APP_.LVD-Adjustment.02.EN_.pdf
- libmodbus documentation: http://libmodbus.org/docs/v3.1.4/modbus_write_register.html
- Example blog showing example of how to connect to MorningStar SureSine using libmodbus on Mac/Linux: https://westyd1982.wordpress.com/2010/03/26/linux-and-mac-os-x-software-to-read-data-from-the-sunsaver-mppt-using-modbus/

