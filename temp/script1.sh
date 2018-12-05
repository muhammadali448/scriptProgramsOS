#script1
#! /bin/bash 
 clear
 echo "Program 1"
 echo "==============================="
 touch a b
 echo "Copy files from to temp directory removing them from the current directory"; 
 #echo "The subject " | mail -s something muhammadali19960@gmail.com 
 mv * /home/muhammadali/UniMaterial/temp/
 echo "Now deleting files over 10 days old "; 
 # for checking
 #find /home/muhammad/UniMaterial/temp/ -mmin +1 -type f -execdir rm -- '{}' \;
 #find /home/muhammad/UniMaterial/temp/ -mtime +10 -type d -delete
 #find /home/muhammad/UniMaterial/temp/ -mtime +10 -type f -delete

 find /home/muhammadali/UniMaterial/temp/ -mmin +1 -type d -delete
 find /home/muhammadali/UniMaterial/temp/ -mmin +1 -type f -delete
 echo "Task 1 Completed"





