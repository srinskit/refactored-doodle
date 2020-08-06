FROM python:3-alpine

RUN apk add --no-cache prometheus tini

COPY vertx_sd vertx_sd
RUN pip install --no-cache-dir vertx_sd/

COPY startup.sh .
COPY prometheus.yml .
COPY alertrules.yml .

ENTRYPOINT ["tini", "--", "/bin/sh", "startup.sh"]