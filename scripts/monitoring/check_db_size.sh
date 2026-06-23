#!/bin/bash

ssh gottlieb@pg-primary \
"sudo -u postgres psql \
-c \"
SELECT
pg_size_pretty(
pg_database_size('company_prod')
);
\""
