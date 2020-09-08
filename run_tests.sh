#!/bin/sh

set -e

# Check Postgres extensions are installed
php -r "in_array('pgsql', get_loaded_extensions()) || exit(1);"
php -r "in_array('pdo_pgsql', get_loaded_extensions()) || exit(1);"

# Check sockets extension is installed.
php -r "in_array('sockets', get_loaded_extensions()) || exit(1);"
