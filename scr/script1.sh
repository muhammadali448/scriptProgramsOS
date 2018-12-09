#script1
#! /bin/bash 
 clear
 echo "Program 1"
 echo "==============================="
 #mail -s "Test Subject" muhammadali19960@outlook.com < /dev/null 
 echo "Files before moving in current directory: $(ls)"
 echo "===================================================="
 echo 
 echo "Files before moving in temp directory: $(ls /home/muhammad/UniMaterial/temp)"
 echo "===================================================="
 echo
 echo "Making some files in this directory"
 touch helloworld.txt byeworld.txt
 echo "Copy files to temp directory removing them from the current directory";
 mv * /home/muhammad/UniMaterial/temp/
 echo "===================================================="
 echo
 echo "Files after moving in current directory: $(ls)"
 echo "===================================================="
 echo
 echo "Files after moving in temp directory: $(ls /home/muhammad/UniMaterial/temp)"
 echo "Now deleting files over 10 days old in temp directory"; 
 find /home/muhammad/UniMaterial/temp/ -mtime +10 -type d -delete
 find /home/muhammad/UniMaterial/temp/ -mtime +10 -type f -delete
 echo "===================================================="
 echo
 echo "Files after deleting 10 days over files in temp directory: $(ls /home/muhammad/UniMaterial/temp)"

 echo "Task 1 Completed"





