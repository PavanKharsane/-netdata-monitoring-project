#!/bin/bash

echo "Starting CPU load test..."

stress --cpu 4 --timeout 60

echo "Starting Memory load test..."

stress --vm 2 --vm-bytes 256M --timeout 60

echo "Starting Disk I/O test..."

dd if=/dev/zero of=testfile bs=1M count=500

rm -f testfile

echo "Monitoring dashboard test completed."
