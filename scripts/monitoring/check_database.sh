#!/bin/bash

PGPASSWORD="gottlieb@"

psql \
-h pg-primary \
-U app_user \
-d company_prod \
-c "SELECT NOW();"
