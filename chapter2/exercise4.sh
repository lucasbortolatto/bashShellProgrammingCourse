#!/bin/bash
FILE="/etc/shadow"
if [ ! -e ${FILE} ]
then
    echo "Shadow passwords are enabled"
    if [ -w ${FILE} ]
    then
        echo "You have permissions to edit ${FILE}"
    else
       echo "You do not have permissions to edit ${FILE}"
    fi
fi 
