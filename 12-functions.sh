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

    
    VALIDATE $? "Listing git"
#     if [ $? -ne 0 ]
#     then   
#        echo "Git is not installed,going to install it.."
#        dnf install git -y
#        if [ $? -ne 0]
#       then 
#          echo "Git installation is not sucess... check it"
#          exit 1
#          else
#            echo "git installation is sucess"
#          fi
#      else
#        echo "Git is already installed, nothing to do.."
#  fi

#     dnf list installed mysql

#     if [ $? -ne 0 ]
#     then 
#        echo "mysql is not installed ...going to install"
#        dnf install mysql -y
#        if [ $? -ne 0 ]
#        then   
#           echo "mysql installation is falure .. please check"
#          else
#            echo " mysql installation is sucess"
#          fi
#       else
#         echo "mysql is already install"

#       fi