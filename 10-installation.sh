#!/binn/bash

USERID=$(id -u )

# sudo userid is always 0 thats y we compare with 0 

if [$USERID -ne 0]
then 
echo "please run this script with root access "

else
echo "you are the super user "
fi

dnf install mysql -y


