#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
echo "please run this script with root access"
exit 1
else
echo "you are the super user."
fi

# echo "all packages : $@"

for i in $@
do
echo "package to install : $i"
done
