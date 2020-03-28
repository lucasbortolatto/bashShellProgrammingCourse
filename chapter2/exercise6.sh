#!/bin/bash
read -p "Type a file or directory to check its type: " FILE

if [ -f ${FILE} ]
then
    echo "It is a regular file"
elif [ -d ${FILE} ]
then
    echo "It is a directory"
else
    echo "It is other type of file"
fi

echo "Printing ls"
ls -la $FILE


