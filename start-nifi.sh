#!/bin/bash

# automatically scan the nifi node container running
sed -i -e \
    "s|^nifi.web.http.host=.*$|nifi.web.http.host=$(hostname)|" \
    conf/nifi.properties
sed -i -e \
    "s|^nifi.cluster.node.address=.*$|nifi.cluster.node.address=$(hostname)|" \
    conf/nifi.properties
sed -i -e \
    "s|^nifi.remote.input.host=.*$|nifi.remote.input.host=$(hostname)|" \
    conf/nifi.properties

# main entrypoint to the cluster
bin/nifi.sh run
# /opt/nifi/conf/
