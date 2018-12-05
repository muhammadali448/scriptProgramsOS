#script1
#! /bin/bash 
 clear
 echo "Program 1"
 echo "==============================="
 touch a.txt b.txt c.txt d.txt
 echo "Copy files from to temp directory removing them from the current directory"; 
 #echo "The subject " | mail -s something muhammadali19960@gmail.com 
 mv * /home/muhammadali/UniMaterial/scriptPrograms/temp/
 echo "Now deleting files over 1 minute old "; 
 # for checking
 #find /home/muhammadali/UniMaterial/scriptPrograms/temp/ -mmin +1 -type f -execdir rm -- '{}' \;
 #find /home/muhammadali/UniMaterial/scriptPrograms/temp/ -mtime +10 -type d -delete
 #find /home/muhammadali/UniMaterial/scriptPrograms/temp/ -mtime +10 -type f -delete

 find /home/muhammadali/UniMaterial/scriptPrograms/temp/ -mmin +1 -type d -delete
 find /home/muhammadali/UniMaterial/scriptPrograms/temp/ -mmin +1 -type f -delete
 echo "Task 1 Completed"





