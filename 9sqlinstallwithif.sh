#!/bin/bash
ID=$(id -u) #checking for root user
if [ $ID -ne 0 ]
then
   echo "please login as root user"
     exit 1 #otherthan zero any exit status ,script stops here.to stop it here we give any number
   else
    echo " yupp,root user"
fi
yum install sql -y
if [ $? -ne 0 ]
  then 
   echo "installation of sql is failed"
    exit 1
    else
    echo "installation of sql is success"
fi    
# if exit status = 0  previous action is success script goes to nxt step

    