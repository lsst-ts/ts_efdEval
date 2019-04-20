#!/bin/sh

# Kill all telemetry publishers
for CSC in $CSC_LIST; do
    cscPid=$(ps -ef | pgrep -f ${CSC}_all_publisher)
    if [ ! -z "$cscPid" ]; then
        kill ${cscPid}
    fi
done