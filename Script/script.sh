#!/bin/bash
MAC="60:a5:e2:3f:f2:b9"
powered() {
    echo "show" | bluetoothct1 | grep "Powered" | cut -d " " -f 2
}

connected() {
    echo "info ${MAC}" | bluetoothct1 | grep "Connected" | cut -d " " -f 2
}

while True
do

    sleep 1
    if [ $(powered) == yes ] && [ $(connected) = no ]; then
        echo "connect ${MAC}" | bluetoothct1
        sleep 5
    fi
done