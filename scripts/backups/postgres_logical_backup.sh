#!/bin/bash

DATE=$(date +%F)

pg_dump -U dba_admin -h localhost -F c company_prod > /tmp/company_prod_$DATE.backup

scp \
/tmp/company_prod_$DATE.backup \
gottlieb@monitoring:/backups/postgresql/logical/

rm -f /tmp/company_prod_$DATE.backup
