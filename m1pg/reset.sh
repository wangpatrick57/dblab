#!/bin/bash
DBLAB_POSTGRES_DPATH="$HOME/Documents/mastersStuff/dblab/postgres"

# remove logs from before
# we remove here since clearing with > may take a long time if the logs are large
rm -f $(readlink $DBLAB_POSTGRES_DPATH/postgresql.csv)
rm -f $(readlink $DBLAB_POSTGRES_DPATH/postgresql.log)

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
psql -d lab -a -f "$DBLAB_POSTGRES_DPATH/teardown.sql"
psql -d lab -a -f "$DBLAB_POSTGRES_DPATH/setup.sql"

# clear logs from teardown and setup
# we do > instead of rm because rm causes commands to not be logged for some reason
> $(readlink $DBLAB_POSTGRES_DPATH/postgresql.csv)
> $(readlink $DBLAB_POSTGRES_DPATH/postgresql.log)
