#!/bin/bash
num1=$1 #generally variables can be caps
num2=$2
sum=$(($num1+$num2))
echo "total:$sum"
echo "args in script:$#"
echo "total args:$@"
echo "script name:$0"