#!/bin/bash
# clear logs at the start of each iteration
> postgresql@14.log

# synchronous restart
brew services restart postgresql
while true; do
  output=$(brew services list)
  echo "$output" | grep "postgresql@14 started" &> /dev/null
  if [ $? -eq 0 ]; then
    echo "postgresql@14 has started!"
    break
  fi
  sleep 1
done

# capture logs for sql commands
psql -d lab -a -f teardown.sql
psql -d lab -a -f setup.sql
psql -d lab -a -f commands.sql