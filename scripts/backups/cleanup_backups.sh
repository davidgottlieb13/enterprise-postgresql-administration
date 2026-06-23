#!/bin/bash

find \
/backups/postgresql/logical \
-type f \
-mtime +30 \
-delete
