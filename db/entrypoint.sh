#!/bin/bash
set -eo pipefail
postgres -c config_file=/etc/postgresql/postgresql.conf -c log_min_messages=fatal