#!/bin/bash
<<info
Run a monitoring command (e.g., ping -c 4 google.com).
Use tee to write the output to the console and a log file (monitor.log).
Print a final message: "Monitoring complete. Check monitor.log."
info

ping -c 4 google.com | tee monitor.log

echo "Monitoring complete. Check monitor.log"


