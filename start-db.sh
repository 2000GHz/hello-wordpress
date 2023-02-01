#! /bin/sh

docker run \
 --detach \
 --name mariadb-volume-test \
 --env MARIADB_USER=example-user \
 --env MARIADB_PASSWORD=my_cool_secret \
 --env MARIADB_ROOT_PASSWORD=sinensia \
 -p 3306:3306 \
 -v `pwd`/mariadb-data:/var/lib/mysql \
  mariadb:latest
