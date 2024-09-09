#!/bin/bash

USERID=$(id -u)
#echo "user ID is: $USERID"
VALIDATE(){
    if [ $1 -ne 0 ]
    then
       echo "$2 is ... FAILED"
       exit1
    else
       echo "$2 is .. . SUCESS"
      fi
}

if [ $USERID -ne 0 ]
 then
    echo "please run this script with root priveleges"
     exit 1
  fi

    dnf  list installed git  

    
    
    if [ $? -ne 0 ]
    then   
       echo "Git is not installed,going to install it.."
       dnf install git -y
       VALIDATE $? "installaing git"
     else
       echo "Git is already installed, nothing to do.."
 fi

    dnf list installed mysql

    if [ $? -ne 0 ]
    then 
       echo "mysql is not installed ...going to install"
       dnf install mysql -y
       VALIDATE $? "INSTALLING mysql"
      else
        echo "mysql is already install"

      fi