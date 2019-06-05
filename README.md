# docker-php-phpmetrics

[![Build Status](https://travis-ci.com/elnebuloso/docker-php-phpmetrics.svg?branch=master)](https://travis-ci.com/elnebuloso/docker-php-phpmetrics)
[![Docker Pulls](https://img.shields.io/docker/pulls/elnebuloso/php-phpmetrics.svg)](https://hub.docker.com/r/elnebuloso/php-phpmetrics)
[![GitHub](https://img.shields.io/github/license/elnebuloso/docker-ansible.svg)](https://github.com/elnebuloso/docker-php-phpmetrics)

Dockerized PhpMetrics - Static analysis tool for PHP

## links

- http://www.phpmetrics.org/

## run

```
docker run --rm -w $(pwd) -v $(pwd):$(pwd) elnebuloso/php-phpmetrics --version
docker run --rm -w $(pwd) -v $(pwd):$(pwd) elnebuloso/php-phpmetrics
```