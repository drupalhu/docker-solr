Solr on Docker
==============

Run [Solr](http://lucene.apache.org/solr/) on [Docker](https://www.docker.io/).

This repository based on the [makuk66/docker-solr](https://index.docker.io/u/makuk66/docker-solr/).

To run:

    docker build -t solr .
    docker run -it -p 8983:8983 -t solr

