#!/binn/bash

USERID=$(id -u )

# sudo userid is always 0 thats y we compare with 0 

if [$USERID -ne 0]
then 
echo "please run this script with root access "
exit 1 # manually exit if error comes
else
echo "you are the super user "
fi

dnf install mysql -y

if [ $? -ne 0 ]

then 
echo "installation of mysql is failure"

exit 1
fi
echo "is script proceeding"
