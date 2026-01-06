#!/bin/bash
R="\e[31m"
G="\e[32m"
N="\e[0m"
DISK_USAGE=$(df -hT| grep -vE 'tmp|File')
DISK_THRESHOLD=1
message=" "
while IFS=read line 
do 
  usage=$(echo $line | awk '{print $6F}' | cut -d % -f1 )
  partition=$(echo $line | awk '{print $1F}')
  if [ $usage -gt $DISK_THRESHOLD ]
  then 
     message+="HIGH DISK USAGE ON $partition:$usage\n"
  fi
done <<< $DISK_USAGE
echo -e  'Message"$message'   