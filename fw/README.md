# Prerequisites
- esp toolchain
- micropython
- pip install adafruit-ampy 

The prerequisites can be found on tools subfolder.

## Building esp toolchain
git clone https://github.com/pfalcon/esp-open-sdk.git
Follow the instructions from https://github.com/pfalcon/esp-open-sdk/blob/master/README.md

## Building micropython
git clone https://github.com/micropython/micropython.git
The instruction can be found at https://github.com/micropython/micropython/blob/master/esp8266/README.md

# Updating firmware
1. Build the toolchain
2. Build the micropython for ESP8266
3. Flash to board

# Running a script at startup
By default, main.py will be executed if found on the board.

To put a script to board flash, ampy can be used:
```
ampy --port /dev/ttyXXX put script.py /main.py
```

