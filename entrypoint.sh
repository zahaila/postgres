#!/bin/bash
# Docker entrypoint script.
# entrypoint.sh

# Wait until Postgres is ready
#while ! pg_isready -q -h $PGHOST -p $PGPORT -U $PGUSER
#do
#  echo "$(date) - waiting for database to start"
#  sleep 2
#done

#cat /tmp/pg_hba.conf > /var/lib/postgresql/data/pgdata/pg_hba.conf

# Create, migrate, and seed database if it doesn't exist.
#if [[ -z `psql -Atqc "\\list $PG_DB"` ]]; then
#  echo "Database $PG_DB does not exist. Creating..."
#  createdb -E UTF8 $PG_DB -l en_US.UTF-8 -T template0
##  mix ecto.migrate
##  mix run priv/repo/seeds.exs
#  echo "Database $PG_DB created."
#else
#  echo "Database $PG_DB does not ..."
#fi
