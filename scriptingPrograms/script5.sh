clear
let "a=1"
while test $a -eq 1
do
echo "     Commands Menu    "
echo "================================"
echo "1. To start the task"
echo "q Quit"
echo "================================"
echo -n "Enter your choice:"
read b
case "$b" in
1)
 echo "Enter the filename you want to copy content from "
 read file1
 echo "Enter the filename you want to copy the content to "
 read file2
 if [ -e $file2 ] ; then
  echo "$file2 exist"
  if [ -w $file2 ]; then
    echo "$file2 have write permissions"
    echo "Do you want to proceed copy the file 1 to file2?? ( y for yes )"
    read b
   if [ $b == y ]; then 
    cp $file1 $file2
    echo "File contents copy"; cat $file2
   else
    echo "Oky you dont want to copy"
   fi 
   else 
    echo "$file2 dont have write permission"
   fi
 else
  echo "$file2 not exist"
 fi
 sleep 5
 clear
 ;;
q)
 exit 0
 ;;
*)
 echo
 echo  "Wrong Option...Try again"
 sleep 2
 clear
 ;;
esac
done
