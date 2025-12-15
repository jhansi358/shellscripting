#!/bin/bash
num1=$1 #generally variables can be caps
num2=$2
sum=$(($num1+$num2))
echo "total:$sum"
echo "args in script:$#" #which args passed
echo "total args:$@" #no of args passes 
echo "script name:$0" #name of script