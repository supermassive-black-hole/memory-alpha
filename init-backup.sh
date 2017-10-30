#!/bin/bash

sed -i -e "s/^#archive_mode = off/archive_mode = on/" /var/lib/postgresql/data/postgresql.conf
sed -i -e "s/^#archive_command = ''/archive_command = '\/opt\/archivecp %p %f'/" /var/lib/postgresql/data/postgresql.conf
sed -i -e "s/MEMORY_ALPHA_S3_BUCKET=/MEMORY_ALPHA_S3_BUCKET=${MEMORY_ALPHA_S3_BUCKET}/" /srv/archivecp
