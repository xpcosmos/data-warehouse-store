--* Create user and Database
CREATE DATABASE starea;

CREATE USER 'starea'@'%' IDENTIFIED BY '<password>';
GRANT ALL ON starea.* TO 'starea'@'%';
GRANT ALL ON airbyte_internal.* TO 'starea'@'%' IDENTIFIED BY '<password>';


