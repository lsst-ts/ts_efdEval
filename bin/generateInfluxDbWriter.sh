#!/bin/sh

# Setup the environment of ts_sal
source ${TS_SAL_DIR}/setup.env

# Build the influxDb writer executable
cd ${TS_SAL_DIR}

for CSC in $CSC_LIST; do
    echo "source ${SAL_DIR}/geninfluxefd-multi.tcl; geninfluxwriters ${CSC}" | tclsh
done
