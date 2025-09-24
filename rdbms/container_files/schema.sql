CREATE DATABASE shibstorage;
CREATE TABLE shibstorage.StorageRecords (
  context varchar(255) NOT NULL,
  id varchar(255) NOT NULL,
  expires bigint DEFAULT NULL,
  value text NOT NULL,
  version bigint NOT NULL,
  PRIMARY KEY (context, id)
) COLLATE latin1_general_cs;
CREATE USER shibboleth IDENTIFIED BY 'shibboleth';
GRANT ALL PRIVILEGES ON shibstorage.StorageRecords TO 'shibboleth'@'%';
