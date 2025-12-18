#!/bin/bash
ID=$(id -u) #checking for root user
R="\e[31m"
G="\e[32m"
N="\e[0m"
DATE=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$DATE.log"
echo "script started at: $DATE" &>>$LOGFILE
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
for package in "$@" 
    do
       yum list installed $package
       if [ $? -ne 0 ]
       then 
         yum install $package -y &>>$LOGFILE
         VALIDATE $? "installing $package"
        else
          echo -e "$G $package is already installed"
        fi
     done     
