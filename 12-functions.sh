#!/bin/bash

VALIDATE(){
    IF [ $1 ne 0]
    then 
    echo "$2... FAILURE"
    else
    echo "$2 ... SUCCESS"
    fi

}

if [$USERID -NE 0 ]
then 
echo "please run this script with root access."
exit 1 # manually exit if error comess.
else 
echo "you are the super user"
fi

dnf install mysql -y
VALIDATE $? "INSTALLING MYSQL"

dnf install git -y
VALIDATE $? "INSTALLING GIT"