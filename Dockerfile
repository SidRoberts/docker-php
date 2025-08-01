FROM php:8.4.10-fpm-alpine

COPY install.sh /install.sh

COPY run_tests.sh /run_tests.sh

RUN chmod +x /install.sh && sh /install.sh && rm /install.sh
