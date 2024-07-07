#!/bin/bash

echo "please enter username:"

# read means 

read -s USERNAME # HERE USERNAME IS VARIABLE

# -s means hide the value what you given
# if you want to display the values you wont give -s
echo "please enter password"

read -s PASSWORD

echo "username is : $USERNAME , password is : $PASSWORD" 

# variable you should always refer with $ symbol