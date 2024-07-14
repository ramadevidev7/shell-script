#!/bin/bash

USERID=$(id -u)
if[ $userid -ne 0]
then 
echo "please run this script with root access"
exit 1
else
echo "you are the super user."
fi

echo "all packages : $@"