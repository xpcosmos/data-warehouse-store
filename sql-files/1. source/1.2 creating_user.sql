--* Create user and Database
CREATE DATABASE 'source';

CREATE USER 'source'@'%' IDENTIFIED BY '<password>';
GRANT ALL ON 'source'.* TO 'source'@'%';
GRANT ALL ON airbyte_internal.* TO 'source'@'%' IDENTIFIED BY '<password>';


