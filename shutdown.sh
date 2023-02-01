#! /bin/bash

echo "Do you really shutdown this computer ? [Y/n]"

read ask

if [ $ask == "y" ]; then
    shutdown now
fi 
    echo "Operation cancelled"
    exit
