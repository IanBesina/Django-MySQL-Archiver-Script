#!/bin/bash
# created by Ian Besina
project="$(basename "$(pwd)")"
cd ..
/opt/lampp/bin/mysqldump -u root -p --databases "$1" > "$1".sql
zip -r "$project".zip "$project" "$1".sql
mv "$project".zip "$project"_$(date +%d-%m-%Y).zip
