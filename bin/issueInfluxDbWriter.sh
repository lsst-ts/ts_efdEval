#!/bin/sh

# Setup the environment of ts_sal
source ${TS_SAL_DIR}/setup.env

# Execute the influx writer in the background with the log file
CSC_TEST_LIST="ATCamera"
for CSC in $CSC_TEST_LIST; do
    CSC_CPP_SRC_DIR=${TS_SAL_DIR}/test/${CSC}/cpp/src
    if [ -d "$CSC_CPP_SRC_DIR" ]; then
        ${CSC_CPP_SRC_DIR}/*telemetry_influxwriter >& ${TS_EFD_EVAL_LOG_DIR}/telemetry_${CSC}.log &
    fi
done