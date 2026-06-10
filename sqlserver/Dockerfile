FROM mcr.microsoft.com/mssql/server:2022-latest

USER root

COPY scripts/scriptfortablecreation.sql /scriptfortablecreation.sql
COPY sqlserver/init-db.sh /init-db.sh
COPY sqlserver/entrypoint.sh /entrypoint.sh

RUN chmod +x /init-db.sh
RUN chmod +x /entrypoint.sh

USER mssql

ENTRYPOINT ["/entrypoint.sh"]
