#!/bin/bash
R="\e[31m"
G="\e[32m"
N="\e[0m"
SOURCE_DIR="/tmp/shell-logs"
if [ ! -d "$SOURCE_DIR" ]
then
  echo -e "$R$SOURCE_DIR deoesnt exist$N"
  fi
FILES_TO_DELETE=$(find "$SOURCE_DIR" -type f -mtime +14 -name "*.log")
while IFS=read -r line
do 
  echo -e "$Rdeleting $line$N"
  rm -rf "$line"
done <<< $FILES_TO_DELETE