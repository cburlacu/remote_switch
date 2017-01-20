import network
import machine
import time
import socket

SSID        = 'CIPowerManager'
SSID_PASS   = ''
RECONNECT   = 30
CONNECTION_TIMEOUT = 5  # seconds
POWER_OFF_TIMER = 7
POWER_ON_TIMER = 3

LOCAL_ADDR = socket.getaddrinfo('0.0.0.0', 80)[0][-1]

RelayPin = machine.Pin(5, machine.Pin.OUT)
pwrStatPin = machine.Pin(15, machine.Pin.IN)
wlan = network.WLAN(network.STA_IF)


def setPin(pin, val):
    # time.sleep_ms(500)
    pin.value(val)
    # time.sleep_ms(500)
    while pin.value() != val:
        pin.value(val)
        # time.sleep_ms(500)


def pwrPush():
    setPin(RelayPin, 1)


def pwrRelease():
    setPin(RelayPin, 0)


def reset():
    RelayPin.value(1)
    time.sleep(2)
    RelayPin.value(0)


def waitFor(pin, val, period=1, msg=None):
    while pin.value() == val:
        time.sleep(period)
        if msg is not None:
            print(msg)


# TODO: read the power
def power():
    if pwrStatPin.value() == 1:
        pwrPush()
        # time.sleep(POWER_OFF_TIMER)  # keep the relay pushed at least 5 seconds to power down the machine
        print("Print power is ON, turning OFF")
        print("Press button")
        waitFor(pwrStatPin, 1, 1, "Waiting to power OFF...")
        pwrRelease()
        time.sleep(5)
        print("Release button")

    print("Print power is now OFF, turning ON")
    print("Press button")
    pwrPush()
    waitFor(pwrStatPin, 0, 1, "Waiting to power ON...")
    pwrRelease()
    time.sleep(1)
    print("Release button")


# start wlan conneciton
def wifi_connect(wifi, ssid, password):
    wifi.active(True)
    wifi.disconnect()
    wifi.connect(ssid, password)
    counter = 0
    while not wlan.isconnected():
        print("Still connecting...")
        time.sleep(1)
        counter = counter + 1
        if (counter % RECONNECT) == 0:  # try to reconnect once at 30 s
            wifi.connect(ssid, password)
    print("Network config:", wlan.ifconfig())


def getNextCommand(sock):
    print("Listening on", LOCAL_ADDR)
    validCommand = False
    command = ""
    while not validCommand:
        incoming, addr = sock.accept()
        incoming.settimeout(CONNECTION_TIMEOUT)
        while True:
            line = incoming.readline()
            if not line or line == b'\r\n':
                validCommand = False
                break
            else:
                command = line.lower().strip()
                validCommand = True
                break
    return command, incoming


# start "main"

if __name__ == '__main__':
    RelayPin.value(0)  # ensure that relay is open

    s = socket.socket()
    s.bind(LOCAL_ADDR)
    s.listen(1)

    while True:
        wifi_connect(wlan, SSID, SSID_PASS)
        # check again
        if wlan.isconnected():
            while True:  # main loop
                result = "Fail"
                comm, sock = getNextCommand(s)
                print("New command received ", comm)
                if comm == b'reset':
                    reset()
                    result = "OK"
                elif comm == b'power':
                    power()
                    result = "OK"
                else:
                    print("Unimplemented command", comm)
                print("The result is %s" % result)
                try:
                    sock.write(result + "\r\n")
                    sock.close()
                except OSError as ex:
                    print(ex)

        else:
            print("Still was not connected, do it again")



