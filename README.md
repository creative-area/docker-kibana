# Kibana with Docker

Provide a Kibana container with Docker linking system

## Usage

Links allow Docker containers to discover each other and securely transfer information about ElasticSearch container to Kibana container.

```bash
$ docker run -d --name elasticsearch elasticsearch
$ docker run -d -P --link elasticsearch:elasticsearch creativearea/kibana
```
