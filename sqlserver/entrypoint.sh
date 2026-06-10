#!/bin/bash

/opt/mssql/bin/sqlservr &
sleep 30

/opt/mssql-tools18/bin/sqlcmd \
-S localhost \
-U sa \
-P "$MSSQL_SA_PASSWORD" \
-C \
-Q "IF DB_ID('ProductDB') IS NULL CREATE DATABASE ProductDB"

/bin/bash /init-db.sh

wait
