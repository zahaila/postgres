FROM postgres:9.6

LABEL mainteiner="Láyro Cristofér <layrozahaila@gmail.com>"

COPY install.sh /tmp
COPY locales.sh /tmp
RUN /tmp/install.sh

ENV LANG pt_BR.UTF-8
ENV LANGUAGE pt_BR.UTF-8

RUN /tmp/locales.sh
COPY entrypoint.sh /docker-entrypoint-initdb.d/
