 #!/bin/bash 


 VALIDATE(){

    echo "exit status : $1"
    echo "what you are doing : $2"

 }

 if [$USERID -ne 0]
 then 
 echo "please run this script with root access"
 exit 1 # mannually exit if error comes
 else
 echo "you are super user ."

 fi 

 dnf install mysql -y
 VALIDATE $? "INSTALLING MYSQL"