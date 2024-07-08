#!/bin/bash

echo "all variables : $@"
echo "all variables count : $#"

# ---  # denotes the notation of number @ means everything


echo "script name : $0 " # script name means file name display means you want to give 0 

echo "current working directory : $PWD"

echo "current directory of the home user: $HOME"

echo "which user is running this script : $USER"

echo "host name : $HOSTNAME"

echo "process id of the current shell-script : $$"

sleep 60 

echo "process id of last background command : $!"

# if you want to check process id through  process logs 

# ps-ef | grep sleep 