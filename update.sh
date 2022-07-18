#! /bin/bash

echo "Search for new update ..."

sleep 2

sudo apt update && sudo apt upgrade

sleep 2

echo "Done"
exit