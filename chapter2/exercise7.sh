#!/bin/bash

#Receives a directory or file as parameter and check if it's a regular file or a directory. After it, run a ls -la command against the file or directory specified

if [ -f $1 ]
then
    echo "It is a regular file"
elif [ -d $1 ]
then
    echo "It is a directory"
else
    echo "It is other type of file"
fi

echo "Printing ls"
ls -la $1


