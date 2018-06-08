FROM composer
MAINTAINER jeff.tunessen@gmail.com

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /srv

ARG PHPMETRICS_VERSION

RUN echo "install version" \
    && if [ "$PHPMETRICS_VERSION" = "" ]; then composer global require phpmetrics/phpmetrics --no-suggest --no-ansi --no-interaction ; fi \
    && if [ "$PHPMETRICS_VERSION" != "" ]; then composer global require phpmetrics/phpmetrics:${PHPMETRICS_VERSION} --no-suggest --no-ansi --no-interaction ; fi \
    && ln -s /srv/vendor/bin/phpmetrics /usr/local/bin/phpmetrics

ENTRYPOINT ["phpmetrics"]
CMD ["-"]