#!/bin/bash

sleep 30

/opt/mssql-tools18/bin/sqlcmd \
-S localhost \
-U sa \
-P "$MSSQL_SA_PASSWORD" \
-C \
-d ProductDB \
-i /scriptfortablecreation.sql
