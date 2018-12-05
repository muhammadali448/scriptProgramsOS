clear
echo "Enter file names you want see on terminal"
flag=false
totalDisplay=0
read filenames
# pr -m -t  a.txt b.txt c.txt
for filename in $filenames
 do
  if [[ -f $filename ]]
   then
    printfiles+="$filename "
    #totalDisplay=$((totalDisplay + 1))
    let totalDisplay++
  else
    notprintfiles+="$filename "
    flag=true
   fi
done
echo "These $totalDisplay out of $(ls | wc -l) files can be display: "; tail -n +1 $printfiles
numfiles=(*)
numfiles=${#numfiles[@]}
notDisplay=`expr $numfiles - $totalDisplay`
echo "$notDisplay files not display in this directory"
if [ $flag == true ]
then 
  echo "These files can't be display because these are not exist: $notprintfiles"
fi


