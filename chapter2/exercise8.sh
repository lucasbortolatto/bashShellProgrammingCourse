#!/bin/bash

#Receives more than one directory or file as parameter and check if it's a regular file or a directory. After it, run a ls -la command against the file or directory specified
echo ""
for FILE in $@ 
do
echo "#######################################################################################################################################"

    if [ -f $FILE ]
    then
        echo ""
        echo "${FILE} is a regular file"
    elif [ -d $FILE ]
    then
        echo ""
        echo "${FILE} is a directory"
    else
        echo ""
        echo "${FILE} is other type of file"
    fi
echo ""
echo "Printing ls"
echo ""
ls -la $FILE
echo "#######################################################################################################################################"
echo ""
done


