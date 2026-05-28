#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Error: You must be root to run this script."
    exit 1
else
    echo "You are running with root access."
fi