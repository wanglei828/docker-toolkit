#!/bin/bash

function container_running() {
  name=$1
  docker ps -a --format "{{.Names}}" | grep "${name}" > /dev/null
  return $?
}

function main() {
  CWD="$(realpath $(dirname $0))"
  CACHE=${CWD}/.cache
  CONF=${CWD}/squid.conf
  if container_running "squid"; then
      docker stop squid 1>/dev/null
      docker rm -f squid 1>/dev/null
  fi

  if [ ! -d ${CACHE} ]; then
    mkdir ${CACHE}
  fi
  docker run --name squid -d --restart=always \
    -p 8128:3128 \
    -v ${CONF}:/etc/squid3/squid.conf \
    -v ${CACHE}:/var/spool/squid3 \
    sameersbn/squid:3.3.8-23
}

main
