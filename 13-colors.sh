#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

CHECK_ROOT(){
   if [ $USERID -ne 0 ]
   then 
     echo " please run this script with root privilage"
     exit 1
   fi
}
#echo "user ID is: $USERID"
VALIDATE(){
    if [ $1 -ne 0 ]
    then
       echo -e "$2 is ...$R FAILED $N"
       exit1
    else
       echo -e "$2 is .. .$G SUCESS $N"
      fi
}
CHECK_ROOT

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