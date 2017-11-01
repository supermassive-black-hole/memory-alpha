#!/bin/bash

set -e

if [ -f /var/lib/postgresql/data/postgresql.conf ]; then
	/docker-entrypoint-initdb.d/init-backup.sh
fi

sed -i -e "s/MEMORY_ALPHA_S3_BUCKET=/MEMORY_ALPHA_S3_BUCKET=${MEMORY_ALPHA_S3_BUCKET}/" /opt/memory-alpha/archivecp
sed -i -e "s/MEMORY_ALPHA_S3_BUCKET=/MEMORY_ALPHA_S3_BUCKET=${MEMORY_ALPHA_S3_BUCKET}/" /opt/memory-alpha/basebackup

exec /opt/conda/bin/circusd /srv/circus.ini