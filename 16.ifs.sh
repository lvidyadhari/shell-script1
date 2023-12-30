#!/bin/bash

file=/etc/passwd

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $file ] # ! denotes opp
then
    echo -e "$R source diectory: $file doesnt exists. $N"
fi

while IFS= ":" read -r username password user_id group_id user_fullname home_dir
do 
     echo "username: $username"
     echo "user ID: $user_id"
     echo "User Full name: $user_fullname"
done < $file
