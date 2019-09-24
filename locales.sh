#!/bin/bash

# Configure timezone and locale
export TZ=America/Cuiaba
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#    sed -i -e 's/# pt_BR.UTF-8 UTF-8/pt_BR.UTF-8 UTF-8/' /etc/locale.gen && \
#    echo 'LANG="pt_BR.UTF-8"'>/etc/default/locale && \
#    dpkg-reconfigure --frontend=noninteractive locales && \
#    update-locale LANG=pt_BR.UTF-8

locale