let "a=1"
clear
while test $a -eq 1
do
echo "     Commands Menu    "
echo "================================"
echo "1. Who is logged in"
echo "2. Date Time"
echo "q Quit"
echo "================================"
echo -n "Enter your choice:"
read b
case "$b" in
1)
 echo "Who is logged in:"
 echo "$(whoami)"
 sleep 2
 clear
 ;;
2)
 echo 
 echo "Date Time:"; date
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

