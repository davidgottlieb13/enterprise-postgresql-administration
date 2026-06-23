#!/bin/bash

ssh gottlieb@pg-primary \
"sudo -u postgres psql -c \"
SELECT
client_addr,
write_lag,
flush_lag,
replay_lag
FROM pg_stat_replication;
\""
