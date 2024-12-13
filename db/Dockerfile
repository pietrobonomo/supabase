FROM supabase/postgres:15.6.1.146

ADD ./realtime.sql /docker-entrypoint-initdb.d/migrations/99-realtime.sql
ADD ./webhooks.sql /docker-entrypoint-initdb.d/init-scripts/98-webhooks.sql
ADD ./roles.sql /docker-entrypoint-initdb.d/init-scripts/99-roles.sql
ADD ./jwt.sql /docker-entrypoint-initdb.d/init-scripts/99-jwt.sql
ADD ./_supabase.sql /docker-entrypoint-initdb.d/migrations/97-_supabase.sql
ADD ./logs.sql /docker-entrypoint-initdb.d/migrations/99-logs.sql
ADD ./pooler.sql /docker-entrypoint-initdb.d/migrations/99-pooler.sql

# Install OpenSSL and sudo
RUN apt-get update && apt-get install -y openssl sudo

# Allow the postgres user to execute certain commands as root without a password
RUN echo "postgres ALL=(root) NOPASSWD: /usr/bin/mkdir, /bin/chown, /usr/bin/openssl" > /etc/sudoers.d/postgres

# Add init scripts while setting permissions
COPY --chmod=755 wrapper.sh /usr/local/bin/wrapper.sh

ENTRYPOINT ["wrapper.sh"]
CMD ["postgres", "--port=5432", "-c", "log_min_messages=fatal"]