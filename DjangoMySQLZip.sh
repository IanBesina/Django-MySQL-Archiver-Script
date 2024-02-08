#!/bin/bash
cd ..
/opt/lampp/bin/mysqldump -u root -p --databases $1 > $1.sql
zip -r $2.zip $2 $1.sql
mv $2.zip $2_$(date +%d-%m-%Y).zip

