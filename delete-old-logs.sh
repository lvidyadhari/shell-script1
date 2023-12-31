#!/bin/bash

SOURCE_DIR="/tmp/shellscript-logs"

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $SOURCE_DIR ] # ! denotes opp
then
    echo -e "$R source diectory: $SOURCE_DIR doesnt exists. $N"
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +5 -name "*.log")

while IFS= read -r line
do 
     echo "Deleting file: $line"
     rm -rf $line
done <<< $FILES_TO_DELETE