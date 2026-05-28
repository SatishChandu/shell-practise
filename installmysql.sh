#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Error: You must be root to run this script."
    exit 1
else
    echo "You are running with root access."
fi

dnf install mysql-server -y

if [ $? -eq 0 ]
then
    echo "MySQL server installed successfully."
else
    echo "Error: Failed to install MySQL server."
    exit 1
fi
