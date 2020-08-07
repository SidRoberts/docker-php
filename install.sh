#!/bin/sh

set -e

apk add --no-cache \
	postgresql-libs \
	postgresql-dev \

docker-php-ext-install \
	pgsql \
	pdo_pgsql

docker-php-ext-install sockets

apk del postgresql-dev
