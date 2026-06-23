#!/bin/bash


ssh gottlieb@pg-primary \
"sudo -u postgres psql -At \
-c \"SELECT state
FROM pg_stat_replication;\""
