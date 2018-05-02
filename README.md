# docker-php-phpmetrics

Dockerized PhpMetrics - Static analysis tool for PHP (http://www.phpmetrics.org/)

## docker

See Supported Tags at https://hub.docker.com/r/elnebuloso/php-phpmetrics/tags/

## run

```
docker run --rm -w $(pwd) -v $(pwd):$(pwd) elnebuloso/php-phpmetrics --version
docker run --rm -w $(pwd) -v $(pwd):$(pwd) elnebuloso/php-phpmetrics
```