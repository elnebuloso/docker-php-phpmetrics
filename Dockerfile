FROM elnebuloso/composer:7.2
MAINTAINER jeff.tunessen@gmail.com

ARG VERSION

RUN echo "install version" \
    && if [ "$VERSION" = "" ]; then composer global require phpmetrics/phpmetrics ; fi \
    && if [ "$VERSION" != "" ]; then composer global require phpmetrics/phpmetrics:${VERSION} ; fi \
    && ln -s /srv/composer/vendor/bin/phpmetrics /usr/local/bin/phpmetrics

ENTRYPOINT ["phpmetrics"]
CMD ["-"]