#start SQL Server, start the script to create the DB and import the data, start the app
ACCEPT_EULA=Y MSSQL_PID=Developer SA_PASSWORD=msSQL1234 /opt/mssql/bin/sqlservr & /usr/src/app/import-data.sh
