FROM mysql:latest

MAINTAINER David S Taylor

ADD jetschema.sql /docker-entrypoint-initdb.d

EXPOSE 3306

