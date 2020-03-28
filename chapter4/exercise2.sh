#! /bin/bash

#Exercise 2:
#Modify the script from the previous exercise. Make the "file_count" function accept a directory
#as an argument. Next have the function display the name of the directory followed by a colon.
#Finally, display the number of files to the screen on the next line. Call the function three times.
#First, on the "/etc" directory, next on the "/var" directory and finally on the "/usr/bin" directory.
#Example output:
#/etc:
#     85

function file_count (){
    DIRECTORYNAME=$1
    LOGFILE="log.txt"
    LOGFILENAME=$LOGFILE

    echo "EUAHEUEHEAU $DIRECTORYNAME."
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

file_count ($1)