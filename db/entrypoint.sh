#!/bin/bash
set -eo pipefail
mkdir /var/lib/postgresql/data/pgdata
postgres -c config_file=/etc/postgresql/postgresql.conf -c log_min_messages=fatal