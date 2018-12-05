clear
let "a=1"
while test $a -eq 1
do
echo "re. For 1 most recent file"
echo "recent. For 10 most recent files" 
echo "recent n. For n most recent files"
echo "q. Quit"
echo "================================"
echo -n "Enter your choice:"
read b
case "$b" in
re)
 echo "1 most recent file is: $(ls -1t | head -1)"
 sleep 2
 clear
 ;;
recent)
 echo "10 most recent files are: $(ls -1t | head -10)"
 sleep 2
 clear
 ;;
"recent "*)
 NUMBER=$(echo "$b" | tr -dc '0-9')
 echo "$NUMBER most recent files are: "; ls -1t | head -$NUMBER
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
