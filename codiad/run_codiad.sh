#!/bin/bash

WORKSPACE=/your/workspace
VOLUME_ROOT=/your/volume/root


CODIAD_CONFIG=${VOLUME_ROOT}/config.php
CODIAD_DATA=${VOLUME_ROOT}/data
CODIAD_PLUGINS=${VOLUME_ROOT}/plugins
CODIAD_THEMES=${VOLUME_ROOT}/themes

mkdir -p ${WORKSPACE} ${CODIAD_DATA} ${CODIAD_PLUGINS} ${CODIAD_THEMES}
touch ${CODIAD_CONFIG}

docker run --name codiad -d --restart=always \
    -p 80:80 \
    -v ${WORKSPACE}:/var/www/html/workspace \
    -v ${CODIAD_CONFIG}:/var/www/html/config.php \
    -v ${CODIAD_DATA}:/var/www/html/data \
    -v ${CODIAD_PLUGINS}:/var/www/html/plugins \
    -v ${CODIAD_THEMES}:/var/www/html/themes \
    xiangquan/codiad
