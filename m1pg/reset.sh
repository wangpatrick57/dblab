#!/bin/bash
# remove logs from before
# we remove here since clearing with > may take a long time if the logs are large
rm -f $(readlink $DBLAB_PATH/postgresql.csv)
rm -f $(readlink $DBLAB_PATH/postgresql.log)

# synchronous restart
pg_ctl restart

# capture logs for sql commands
psql -d lab -a -f "$DBLAB_PATH/teardown.sql"
psql -d lab -a -f "$DBLAB_PATH/setup.sql"

# clear logs from teardown and setup
# we do > instead of rm because rm causes commands to not be logged for some reason
> $(readlink $DBLAB_PATH/postgresql.csv)
> $(readlink $DBLAB_PATH/postgresql.log)
