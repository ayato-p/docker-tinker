FROM python:3.6.1-alpine

MAINTAINER ayato-p <lumia@nandeger.com>

RUN apk add --update --no-cache --virtual tinkerer-builddeps gcc libxml2-dev libxslt-dev build-base git && \
    pip install tinkerer
    # apk del --purge tinkerer-builddeps

ENTRYPOINT ["tinker"]