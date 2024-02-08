#!/bin/bash
cd ..
/opt/lampp/bin/mysqldump -u root -p --databases sensmieux > sensmieux.sql
zip -r sensmieux.zip sensmieux sensmieux.sql
mv sensmieux.zip sensmieux_$(date +%d-%m-%Y).zip

