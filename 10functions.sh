#!/bin/bash
ID=$(id -u) #checking for root user
VALIDATE() {           #functions below variable 
if [ $1 -ne 0 ]
  then 
   echo "$2 .. is failed"
    else
    echo "$2 .. is success"
fi  
}
if [ $ID -ne 0 ]
then
   echo "please login as root user"
     exit 1 #otherthan zero any exit status ,script stops here.to stop it here we give any number
   else
    echo " yupp,root user"
fi
# if exit status = 0  previous action is success script goes to nxt step
yum install sql -y
VALIDATE $? "installing mysql"
# to do repeative tasks calling validate function $? is $1 and installing my sql is $2  
yum install git -y
VALIDATE $? "installing git"