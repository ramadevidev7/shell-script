#!/bin/bash


USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
g="\e[32m"
N="\e[0m"
Y="\e[33m
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
dnf list installed $i &>>$LOGFILE
if [ $? -eq 0 ]
then 
echo "$i already installed ... $Y skipping $N"
else
echo "$i is not installed .. need to install"

fi
done

