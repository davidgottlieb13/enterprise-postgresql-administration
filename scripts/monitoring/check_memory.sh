#!/bin/bash

for SERVER in \
pg-primary \
pg-replica \
monitoring
do

echo "=== $SERVER ==="

ssh gottlieb@$SERVER \
"free -h"

done
