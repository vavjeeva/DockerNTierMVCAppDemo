FROM microsoft/mssql-server-windows-developer:latest
COPY ./Database_Setup.sql .
RUN sqlcmd -i Database_Setup.sql 
