#!/bin/bash
./reset.sh
# do it twice to have two connections
psql -d lab -a -f commands.sql
psql -d lab -a -f commands.sql