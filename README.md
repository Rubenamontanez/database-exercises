# database-exercises


mysql.server status 
mysql.server start
mysql.server stop
mysql -u username -p
SELECT current_user;
SELECT user, host FROM mysql.user;
CREATE USER 'username'@'host' IDENTIFIED BY 'password';
GRANT [priveleges] ON database.table TO 'username'@'host' [WITH GRANT OPTION];
DROP USER 'username'@'host';
SHOW DATABASES;
USE database_name;
Data Definition Language (CREATE, DROP, SHOW)
Data Control Language (GRANT, USE, etc.)
Data Manipulation Language (INSERT, UPDATE, DELETE)
Data Query Language (SELECT)
