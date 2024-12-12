FROM kong:2.8.1
COPY ./kong.yml /home/kong/temp.yml
ENTRYPOINT bash -c 'envsubst < ~/temp.yml > ~/kong.yml && cat ~/kong.yml && /docker-entrypoint.sh kong docker-start'
