#!/bin/bash
echo "======PG-PRIMARY====="
ssh gottlieb@pg-primary \
"df -h /"


echo "======PG-REPLICA====="
ssh gottlieb@pg-replica \
"df -h /"


echo "======MONITORING====="
ssh gottlieb@monitoring \
"df -h /"
