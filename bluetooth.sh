#! /bin/bash

power_on() {
    echo "power on" | bluetoothctl | grep "done" | cut -d " " -f 2
}

scan_on() {
    echo "scan on" | bluetoothctl | grep "scan" | cut -d " " -f 2
}

echo -e "active bluetooth ? [y/n]"
read ask

if [ $ask == y ]; then
    echo "activate bluetooth..."
    sudo service bluetooth start
else
    echo "stop bluetooth..."
    sudo service bluetooth stop
    echo "done"
    exit
fi

echo -e "done\ndo you want see status ? [y/n]\n=>"
read ask1

if [ $ask1 == y ]; then
    service bluetooth status
fi

echo -e "start scan ? [y/n]\n=>"
read ask2

if [ $ask2 == y ]; then
    echo "init..."
    bluetoothctl
    (power_on)
    (scan_on)
fi
