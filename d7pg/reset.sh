#!/bin/bash
DBLAB_POSTGRES_DPATH="$HOME/dblab/d7pg"

# # remove logs from before
# # we remove here since clearing with > may take a long time if the logs are large
rm -f $(readlink $DBLAB_POSTGRES_DPATH/postgresql.csv)
# rm -f $(readlink $DBLAB_POSTGRES_DPATH/postgresql.log)

# synchronous restart
pg_ctl restart

# capture logs for sql commands
psql -d lab -a -f "$DBLAB_POSTGRES_DPATH/teardown.sql"
psql -d lab -a -f "$DBLAB_POSTGRES_DPATH/setup.sql"

# clear logs from teardown and setup
# we do > instead of rm because rm causes commands to not be logged for some reason
> $(readlink $DBLAB_POSTGRES_DPATH/postgresql.csv)
> $(readlink $DBLAB_POSTGRES_DPATH/postgresql.log)
