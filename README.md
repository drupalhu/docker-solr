Solr on Docker
==============

Run [Solr](http://lucene.apache.org/solr/) on [Docker](https://www.docker.io/).

This repository based on the [makuk66/docker-solr](https://index.docker.io/u/makuk66/docker-solr/).

Build:

    docker build -t SOLR .

First run:

    docker run -d -p 8983:8983 --name solr SOLR

Stop

    docker stop solr

Run again:

    docker start solr

Delete all data:

    docker rm solr
