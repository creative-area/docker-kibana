#!/bin/bash
set -e

export ELASTICSEARCH_PORT_9200_TCP_ADDR=${ELASTICSEARCH_PORT_9200_TCP_ADDR:-elasticsearch}
export ELASTICSEARCH_PORT_9200_TCP_PORT=${ELASTICSEARCH_PORT_9200_TCP_PORT:-9200}

sed -i "s/^elasticsearch_url: .*$/elasticsearch_url: \"http:\/\/${ELASTICSEARCH_PORT_9200_TCP_ADDR}:${ELASTICSEARCH_PORT_9200_TCP_PORT}\"/g" "${KIBANA_PATH}/config/kibana.yml"

exec "${KIBANA_PATH}/bin/kibana"
