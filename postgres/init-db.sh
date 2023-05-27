#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE DATABASE tagger;
	GRANT ALL PRIVILEGES ON DATABASE tagger TO postgres;
	CREATE DATABASE iotcataloguer;
	GRANT ALL PRIVILEGES ON DATABASE iotcataloguer TO postgres;
	CREATE DATABASE cdpo;
	GRANT ALL PRIVILEGES ON DATABASE cdpo TO postgres;
  CREATE DATABASE contextmatcher;
  GRANT ALL PRIVILEGES ON DATABASE contextmatcher TO postgres;
EOSQL
