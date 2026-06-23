#!/bin/bash

REPORT=\
/operations/reports/report_$(date +%F).txt

echo "Daily Operations Report" > $REPORT

date >> $REPORT

echo "" >> $REPORT

echo "Database Status" >> $REPORT

/operations/scripts/check_database.sh \
>> $REPORT

echo "" >> $REPORT

echo "Replication Status" >> $REPORT

/operations/scripts/check_replication.sh \
>> $REPORT
