#!/bin/bash

echo "All variables passed to the script are: $@"
echo "The number of variables passed to the script is: $#"
echo "The name of the script is: $0"
echo "The first variable passed to the script is: $1"
echo "The current process ID is: $$"
echo "The last command's exit status is: $?"
echo "The last background process ID is: $!"
echo "User's home directory is: $HOME"
echo "Current working directory is: $PWD"
echo "User running the script is: $USER"