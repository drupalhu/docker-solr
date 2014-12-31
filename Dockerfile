
FROM    makuk66/docker-oracle-java7
MAINTAINER  Martijn Koster "mak-docker@greenhills.co.uk"

ENV SOLR_VERSION 3.5.0
ENV SOLR solr-$SOLR_VERSION
RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get update && \
  apt-get -y install lsof curl procps && \
  mkdir -p /opt && \
  wget -nv --output-document=/opt/$SOLR.tgz http://ftp.nchu.edu.tw/Unix/Web/apache/lucene/solr/$SOLR_VERSION/apache-solr-$SOLR_VERSION.tgz && \
  tar -C /opt --extract --file /opt/$SOLR.tgz && \
  rm /opt/$SOLR.tgz && \
  ln -s /opt/$SOLR /opt/solr

EXPOSE 8983
COPY start.sh /start.sh
CMD ["bash", "/start.sh"]
