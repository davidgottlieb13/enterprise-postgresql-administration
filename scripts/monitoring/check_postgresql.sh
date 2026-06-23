#!/bin/bash

HOST="pg-primary"

ssh gottlieb@$HOST \
"systemctl is-active postgresql"
