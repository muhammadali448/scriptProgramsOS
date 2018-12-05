
hour=$(date +%H)
print=""
if [ $hour -ge 0 -a $hour -lt 12 ]
then
  print="Good Morning, $USER"
elif [ $hour -ge 12 -a $hour -lt 18 ]
then 
  print="Good Afternoon, $USER"
else 
  print="Good Evening, $USER"
fi
echo $print




