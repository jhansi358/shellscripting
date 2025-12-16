#!/bin/bash
ID=$(id -u) #checking for root user
if [ $ID -ne 0 ]
   then
    echo "please login as root user"
else
    echo " yupp,root user"
fi   
# if id = 0 it is root user
  