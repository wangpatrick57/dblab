#!/bin/bash
./reset.sh
psql -d lab -a -f commands.sql
psql -d lab -a -f commands.sql