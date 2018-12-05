let "a=1"
while test $a -eq 1
do
clear
echo "1. Display a file on monitor" 
echo "2. Delete a file"
echo "q. Quit"
echo "================================"
echo -n "Enter your choice:"
read b
case "$b" in
1)
 echo "Enter a filename you want to monitor: "; 
 read filename
 less $filename
 sleep 2
 clear
 ;;
2)
 echo "Enter a filename you want to delete"
 read filename
 rm $filename
 sleep 2
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
