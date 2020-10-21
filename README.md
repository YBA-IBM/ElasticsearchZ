# ElasticsearchZ

This repository contains the files for a linux-on--IBM-Z Elasticsearch from this repository: https://github.com/linux-on-ibm-z/dockerfile-examples

# License

dockerfile-examples is licensed under the Apache License, Version 2.0.


<!--

********************************************************************************

WARNING:

    DO NOT EDIT "elasticsearch/README.md"

    IT IS AUTO-GENERATED

    (from the other files in "elasticsearch/" combined with a set of templates)

********************************************************************************

-->

# Quick reference

-	**Maintained by**:  
	[the Elastic Team](https://github.com/elastic/elasticsearch)
  
-	**Port Maintained by**:  
	[Linux-on-IBM-Z Dockerfile Examples Repo](https://github.com/linux-on-ibm-z/dockerfile-examples)
  

-	**Where to get help**:  
	the [Elasticsearch Discuss Forums](https://discuss.elastic.co/c/elasticsearch), the [Elastic community](https://www.elastic.co/community)

# Supported tags and respective `Dockerfile` links

-	[`7.9.2`](https://github.com/YBA-IBM/ElasticsearchZ/blob/main/Elasticsearch/Dockerfile)

# Quick reference (cont.)

-	**Where to file issues**:  
	For issues with Elasticsearch Docker Image or Elasticsearch: https://github.com/YBA-IBM/ElasticsearchZ/issues

-	**Supported architectures**: s390x

# What is Elasticsearch?

Elasticsearch is a distributed, RESTful search and analytics engine capable of solving a growing number of use cases. As the heart of the Elastic Stack, it centrally stores your data so you can discover the expected and uncover the unexpected.

> For more information about Elasticsearch, please visit [www.elastic.co/products/elasticsearch](https://www.elastic.co/products/elasticsearch)

![logo](https://raw.githubusercontent.com/docker-library/docs/7baeec9386c1d3960fc9021a5973694b2e0e1af9/elasticsearch/logo.png)

# About This Image

The default Elastic distribution is governed by the Elastic License, and includes the [full set of free features](https://www.elastic.co/subscriptions).

The Linux-on-IBM-Z Dockerfile Examples port is governed by the [Apache 2.0 License](http://www.apache.org/licenses/LICENSE-2.0)

View the detailed release notes [here](https://www.elastic.co/guide/en/elasticsearch/reference/current/es-release-notes.html).

# How to use this image

**Note:** Pulling an images requires using a specific version number tag. The `latest` tag is not supported.

For Elasticsearch versions prior to 6.4.0 a full list of images, tags, and documentation can be found at [docker.elastic.co](https://www.docker.elastic.co/).

For full Elasticsearch documentation see [here](https://www.elastic.co/guide/en/elasticsearch/reference/index.html).

**The commands below are intended for deploying in a development context only. For production installation and configuration, see [Install Elasticsearch with Docker](https://www.elastic.co/guide/en/elasticsearch/reference/7.5/docker.html).**

## Running in Development Mode

Create user defined network (useful for connecting to other services attached to the same network (e.g. Kibana)):

```console
$ docker network create somenetwork
```

Run Elasticsearch:

```console
$ docker run -d --name elasticsearch --net somenetwork -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:tag
```

## Running in Production Mode

See [Install Elasticsearch with Docker](https://www.elastic.co/guide/en/elasticsearch/reference/7.5/docker.html)

# License

View [Elastic license information](https://github.com/elastic/elasticsearch/blob/6.4/licenses/ELASTIC-LICENSE.txt) and [Apache 2.0 license information](http://www.apache.org/licenses/LICENSE-2.0) for the software contained in this image.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

Some additional license information which was able to be auto-detected might be found in [the `repo-info` repository's `elasticsearch/` directory](https://github.com/docker-library/repo-info/tree/master/repos/elasticsearch).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
