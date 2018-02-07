#!/bin/sh

dt=$(date '+%d/%m/%Y %H:%M:%S');
users=$(awk -F: '{ print $1 }' /etc/passwd)
echo "Time:" "$dt\n""Users:\n""$users" > testfile.txt
