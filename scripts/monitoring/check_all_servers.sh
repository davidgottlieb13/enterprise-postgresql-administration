#!/bin/bash

SERVERS=(
pg-primary
pg-replica
monitoring
)

for SERVER in "${SERVERS[@]}"
do
echo "Checking $SERVER"

ssh gottlieb@$SERVER \
"hostname && uptime"

echo "----------------"
done

echo \
"$(date): check_all_servers.sh > Check completed" \
>> /operations/logs/operations.log
