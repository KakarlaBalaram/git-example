#!/bin/bash

echo "All variables passed to the script: $@"
echo "Number of variables passed : $#"
echo "Script  name: $0"
echo "Current working directory: $PWD"
echo "Home directory of curent user: $HOME"
echo "PId of the script executing now: $$"
sleep 100 &
echo "PID of the last background command: $!"