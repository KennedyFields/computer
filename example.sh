function mine {
  echo "I'm a function"
}

phrase=$1
count=$2
if [ $count -gt 10 ] && [ $count -le 15 ]
then 
  echo "Mr. Fields is not that angry"
elif [ $count -gt 15 ] 
then 
  echo "Mr. Fields would need medication"
  mine
else 
  for count in $(seq 1 $count)
  do
    echo "$count If you don't get git Mr. Fields will throw a $phrase"
  done
fi
