FROM postgres:10

ADD archivecp /opt/archivecp
ADD init-backup.sh /docker-entrypoint-initdb.d/init-backup.sh

RUN apt-get update \
 && apt-get install -y python3-pip \
 && pip3 install awscli \
 && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
