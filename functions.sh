#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Error: You must be root to run this script."
    exit 1
else
    echo "You are running with root access."
fi

VALIDATE(){
    if [ $1 -eq 0 ]
    then
        echo "Installing $2 successfully."
    else
        echo "Error: Failed to install $2."
        exit 1
    fi
}

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "MySQL server is not installed. Installing now..."
    dnf install mysql-server -y

    VALIDATE $? "MySQL server"
else
    echo "MySQL server is already installed."
fi

dnf list installed python3

if [ $? -ne 0 ]
then
    echo "Python3 is not installed. Installing now..."
    dnf install python3 -y

    VALIDATE $? "Python3"
else
    echo "Python3 is already installed."
fi

dnf list installed nginx

if [ $? -ne 0 ]
then
    echo "Nginx is not installed. Installing now..."
    dnf install nginx -y

    VALIDATE $? "Nginx"
else
    echo "Nginx is already installed."
fi




