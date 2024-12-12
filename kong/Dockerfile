FROM kong:2.8.1
COPY ./kong.yml /home/kong/temp.yml
RUN apt update && apt install -y gettext-base
ENTRYPOINT bash -c 'envsubst < ~/temp.yml > ~/kong.yml && cat ~/kong.yml && /docker-entrypoint.sh kong docker-start'
