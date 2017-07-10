#!/bin/bash
set -e

echo "Initializing Filebeat..."
${FILEBEAT_HOME}/filebeat -e -c ${FILEBEAT_HOME}/filebeat.yml
