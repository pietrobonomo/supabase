#!/bin/bash
set -eo pipefail
mkdir -p /var/lib/postgresql/data/pgdata
chown postgres:postgres /var/lib/postgresql/data/pgdata
su -c "postgres -c config_file=/etc/postgresql/postgresql.conf -c log_min_messages=fatal" postgres