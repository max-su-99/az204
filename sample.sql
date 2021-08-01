/*
select * from sys.certificates;

use database1;
go
SELECT db_name(database_id), encryptor_thumbprint
FROM master.sys.dm_database_encryption_keys
*/

--use database1;
--go;

sp_help table1
insert table1
select 2, 'that'
select * from table1;

/*
drop table dbo.table1
go
create   table dbo.table1
(

    idd int not null,
    name1 VARCHAR(100)
)

*/


USE master;
GO
CREATE MASTER KEY ENCRYPTION
       BY PASSWORD='pa#@89hlkhss@3W5';
GO


USE master;
GO 
CREATE CERTIFICATE TDE_Certificate
       WITH SUBJECT='Certificate for TDE';
GO

USE master;
GO 
CREATE CERTIFICATE TDE_Certificate2
       WITH SUBJECT='Certificate2 for TDE';
GO


USE database1
GO
CREATE DATABASE ENCRYPTION KEY
WITH ALGORITHM = AES_256
ENCRYPTION BY SERVER CERTIFICATE TDE_Certificate; 


USE database1
GO
CREATE DATABASE ENCRYPTION KEY
WITH ALGORITHM = AES_256
ENCRYPTION BY SERVER CERTIFICATE TDE_Certificate2asdda; 