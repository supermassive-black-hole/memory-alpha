#!/bin/bash

sed -i -e "s/^#archive_mode = off/archive_mode = on/" /var/lib/postgresql/data/postgresql.conf
sed -i -e "s/^#archive_command = ''/archive_command = '\/opt\/memory-alpha\/archivecp %p %f'/" /var/lib/postgresql/data/postgresql.conf
sed -i -e "s/^#archive_timeout = 0/archive_timeout = 300/" /var/lib/postgresql/data/postgresql.conf
