$servers = @(
'SIBERIANTIGER \DLTA01_PRD',
'SIBERIANHUSKY\DLTA01_ACC'
)
$MSSQL_SQL_FILE = "select SERVERPROPERTY('Edition'),SUBSTRING(@@version, 15,22), @@SERVERNAME"

foreach ($server in $servers)
{ 
	Invoke-Sqlcmd -ServerInstance $server -query $MSSQL_SQL_FILE 
}