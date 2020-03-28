#! /bin/bash

#Write a shell script that consists of a function that display the number of files in the present
#working directory. Name this function "file_count" and call it in your script. If you use a variable
#in your function, remember to make it a local variable.
#Hint: The wcutility is used to count the number of lines, words, and bytes.

function file_count (){
    LOGFILE="log.txt"
    LOGFILENAME=$LOGFILE
    echo "Generating log file with number of files in current directory"
    ls -p | grep -v / >> $LOGFILE
    echo ""
    NUMBEROFFILES=$(wc -l $LOGFILE)
    echo "Number of files on current Directory: $NUMBEROFFILES"
    echo ""
    echo "Removing LogFile $LOGFILE"
    rm -Rf $LOGFILE
    if [ ! -f $LOGFILENAME ]
    then
        echo "Log file removed"
    else
        echo "Error... Logfile was not removed"
    fi
}

file_count
