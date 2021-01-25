#!/bin/bash

set -x

cd docker-entrypoint-initdb.d
cat 002_createtable.sql | docker_process_sql --database=testdb
