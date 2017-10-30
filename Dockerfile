FROM postgres:10

ADD archivecp /opt/memory-alpha/archivecp
ADD init-backup.sh /docker-entrypoint-initdb.d/init-backup.sh

RUN chown -R postgres /opt/memory-alpha \
 && chgrp -R postgres /opt/memory-alpha \
 && apt-get update \
 && apt-get install -y python3-pip \
 && pip3 install awscli \
 && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
