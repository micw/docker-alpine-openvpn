#!/bin/bash

set -e

if [ ! -z "${PIPEWORK_WAIT_IF}" ]; then
  chmod 700 /pipework
  /pipework --wait -i ${PIPEWORK_WAIT_IF}
fi

/usr/sbin/openvpn --config ${OPENVPN_CONF}
