#script1
#! /bin/bash 
 clear
 echo "Program 1"
 echo "==============================="
 #mail -s "Test Subject" muhammadali19960@outlook.com < /dev/null 
 echo "Making some files which have less than 1 minute"
 touch helloworld.txt byeworld.txt
 echo "Copy files from to temp directory removing them from the current directory";
 mv * /home/muhammadali/UniMaterial/temp/
 echo "Now deleting files over 10 days old "; 
 find /home/muhammadali/UniMaterial/temp/ -mtime +10 -type d -delete
 find /home/muhammadali/UniMaterial/temp/ -mtime +10 -type f -delete
 echo "Task 1 Completed"





