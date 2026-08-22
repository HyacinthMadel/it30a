C:\Dev_a\it30a-udtohan\backup

CREATE DATABASE <database_name>;
SHOW DATABASES;
CONNECT <database_name>;
CREATE TABLE <table_name_in_plural> ();
INSERT INTO <table_name_in_plural>
   (columns)
   VALUES(values);

Utility Commands
\! cls

mysqldump -u root -p --databases library_db > "C:\Dev_a\it30a-udtohan\backup\%date:~4%_%date:~4, 2%_%date:~7, 2%_%time:~0, 2%_%time:~3, 2%_%time:~6, 2%_library_db.sql"

mysqldump -u root -p --databases library_db > "C:\Dev_a\it30a-udtohan\backup\%date:~10,4%-%date:~4,2%-%date:~7,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%_library_db.sql"

%date:~-4%
%date:~4,2
%date:~7,2%
$time:~0,2%
%time:~3,2%
%time:~6,2%
library_db2.sql"

Labtory 2

ALTER TABLE student ADD COLUMN student_created_at TIMESTAMP NULL DEFAULT; --Crreate a new table for a TIMESTAMP
UPDATE student SET student_created_at = CURRENT_TIMESTAMP WHERE student_created_at IS NULL; --Update the newly inserted values
ALTER TABLE students MODIFY COLUMN student_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP; --Automatically uppdates the time