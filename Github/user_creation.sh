#!/bin/bash

user_creation() {

echo "Enter username"
read username

if id "$username" &>/dev/null; then

echo "user already exist"

else

sudo useradd $username

echo "Enter groupname"
read groupname

sudo usermod -aG $groupname $username

echo "$username created succesuflly"

fi

}

user_creation

