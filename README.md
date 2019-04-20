# Engineer Facility Database (EFD) Evaluation

*This module is used to evaluate EFD with different database.*

## 1. Setup Environment

*Modify the paths defined in setup.env, and do `source setup.env`.*

## 2. Bin Content

- **buildCscTestScripts.sh**: Build the test scripts of commandable SAL component (CSC).
- **generateInfluxDbWriter.sh**: Generate the InfluxDB writer.
- **issueInfluxDbWriter.sh**: Issue all InfluxDB writers with each related CSC log files.
- **killInfluxDbWriter.sh**: Kill all InfluxDB writers.
- **issueAllTelemetryPub.sh**: Issue all CSC telemetry publishers.
- **killAllTelemetryPub.sh**: Kill all CSC telemetry publishers.