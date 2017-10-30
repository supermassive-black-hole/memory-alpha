#!/bin/bash

sed -i -e "s/^#archive_mode = off/archive_mode = on/" /var/lib/postgresql/data/postgresql.conf
sed -i -e "s/^#archive_command = ''/archive_command = '\/opt\/memory-alpha\/archivecp %p %f'/" /var/lib/postgresql/data/postgresql.conf
sed -i -e "s/MEMORY_ALPHA_S3_BUCKET=/MEMORY_ALPHA_S3_BUCKET=${MEMORY_ALPHA_S3_BUCKET}/" /opt/memory-alpha/archivecp
