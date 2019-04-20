#!/bin/sh

# Kill the influx writer
for CSC in $CSC_LIST; do
    cscPid=$(ps -ef | pgrep -f ${CSC}_telemetry_influxwriter)
    if [ ! -z "$cscPid" ]; then
        kill ${cscPid}
    fi
done