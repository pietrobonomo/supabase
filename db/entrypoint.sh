#!/bin/bash
set -eo pipefail
chmod 700 /var/lib/postgresql/data
mkdir -p /var/lib/postgresql/data/pgdata
chown postgres:postgres /var/lib/postgresql/data /var/lib/postgresql/data/pgdata
su -c "postgres -c config_file=/etc/postgresql/postgresql.conf -c log_min_messages=fatal" postgres