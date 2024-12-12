#!/bin/sh
set -o pipefail
chown --recursive postgres:postgres /var/lib/postgresql/data
postgres -c config_file=/etc/postgresql/postgresql.conf -c log_min_messages=fatal