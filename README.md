<img src="https://raw.githubusercontent.com/elnebuloso/docker-php-phpmetrics/master/logo.png" width="100%"/>

# docker-php-phpmetrics

![Release](https://github.com/elnebuloso/docker-php-phpmetrics/workflows/Release/badge.svg)
[![Docker Pulls](https://img.shields.io/docker/pulls/elnebuloso/php-phpmetrics.svg)](https://hub.docker.com/r/elnebuloso/php-phpmetrics)
[![GitHub](https://img.shields.io/github/license/elnebuloso/docker-php-phpmetrics.svg)](https://github.com/elnebuloso/docker-php-phpmetrics)

Dockerized PhpMetrics - Static analysis tool for PHP

## github

- https://github.com/elnebuloso/docker-php-phpmetrics

## docker

- https://hub.docker.com/r/elnebuloso/php-phpmetrics
- https://hub.docker.com/r/elnebuloso/php-phpmetrics/tags?page=1&ordering=last_updated
- weekly builds, 0 0 * * 0

## links

- http://www.phpmetrics.org/

## run

```
docker run --rm -w $(pwd) -v $(pwd):$(pwd) elnebuloso/php-phpmetrics --version
docker run --rm -w $(pwd) -v $(pwd):$(pwd) elnebuloso/php-phpmetrics
```