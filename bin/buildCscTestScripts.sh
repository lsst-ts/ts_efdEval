#!/bin/sh

# Set the paths
TS_SAL_TEST_DIR=${TS_SAL_DIR}/test
TS_XML_INTERFACE_DIR=${TS_XML_DIR}/sal_interfaces

# Copy the needed xml files from ts_xml to ts_sal
cp ${TS_XML_INTERFACE_DIR}/SAL*.xml ${TS_SAL_TEST_DIR}

for CSC in $CSC_LIST; do
    CSC_DIR=${TS_XML_INTERFACE_DIR}/${CSC}
    if [ -d "$CSC_DIR" ]; then
        cp ${CSC_DIR}/*.xml ${TS_SAL_TEST_DIR}
    fi
done

# Setup the environment of ts_sal
source ${TS_SAL_DIR}/setup.env

# Build the CSC test scripts
cd ${TS_SAL_TEST_DIR}

for CSC in $CSC_LIST; do
    salgenerator ${CSC} validate
    salgenerator ${CSC} html
    salgenerator ${CSC} sal cpp
    salgenerator ${CSC} sal python
    salgenerator ${CSC} lib
done
