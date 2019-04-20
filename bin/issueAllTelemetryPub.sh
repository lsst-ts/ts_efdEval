#!/bin/sh

# Setup the environment of ts_sal
source ${TS_SAL_DIR}/setup.env

# Execute the influx writer in the background with the log file
for CSC in $CSC_LIST; do
    CSC_CPP_SRC_DIR=${TS_SAL_DIR}/test/${CSC}/cpp/src
    if [ -d "$CSC_CPP_SRC_DIR" ]; then
        ${CSC_CPP_SRC_DIR}/*${CSC}_all_publisher &
    fi
done