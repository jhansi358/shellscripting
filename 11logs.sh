#!/bin/bash
ID=$(id -u) #checking for root user
R="\e[31m"
G="\e[32m"
N="\e[0m"
DATE=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$DATE.log"
echo "script started at:$DATE"
VALIDATE() {           #functions below variable 
if [ $1 -ne 0 ]
  then 
   echo -e "$R$2 .. is failed" 
    else
    echo  -e "$G$2 .. is success"
fi  
}
if [ $ID -ne 0 ]
then
   echo -e "please login as root user"
     exit 1 #otherthan zero any exit status ,script stops here.to stop it here we give any number
   else
    echo -e " yupp,root user"
fi
# if exit status = 0  previous action is success script goes to nxt step
yum install sql -y &>>$LOGFILE
VALIDATE $? "installing mysql"
# to do repeative tasks calling validate function $? is $1 and installing my sql is $2  
yum install git -y &>>$LOGFILE
VALIDATE $? "installing git"