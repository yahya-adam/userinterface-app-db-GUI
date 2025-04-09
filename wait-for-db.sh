#!/bin/sh
# wait-for-db.sh

set -e

host="$1"
shift
cmd="$@"

until mysqladmin ping -h"$host" -u"root" --password="$MYSQL_ROOT_PASSWORD" --protocol=tcp --silent; do
  >&2 echo "MySQL is unavailable - sleeping"
  sleep 5
done

>&2 echo "MySQL is up - executing command"
exec $cmd