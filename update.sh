#! /bin/bash

echo "Search for new update ..."

sleep 2

sudo apt update && sudo apt upgrade -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean

sleep 2

echo "All updates are Done"
exit
