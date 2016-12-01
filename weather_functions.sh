function average {
echo average $(echo "scale=2 ; $sum / ${#temp_array[@]}" | bc)
}

function round {
  printf "%.*f\n" 0 $1
}

function maxmin {
  max=$(round ${temp_array[0]})
  for n in "${temp_array[@]}" ; do
      (( $(round $n) > $(round $max) )) && max=$n
#     if [ $(round $n) -gt $(round $max) ]; then max=$n; fi
  done
echo max = $max

  min=$(round ${temp_array[0]})
  for n in "${temp_array[@]}" ; do
      (( $(round $n) < $(round $min) )) && min=$n
  done
echo min = $min
}

#the following will sum all the values of the temp_array and put them in a variable called 'sum'
declare -a temp_array

for temp in $(cat ~/tmp/weather_data.csv | awk -F',' '{ print $2 }'); do 
  temp_array=("${temp_array[@]}" $temp)
done
 
samples=$((${#temp_array[@]}-1))
sum=0
for temp in $(seq 0 $samples); do 
  sum=$(echo "$sum + ${temp_array[$temp]}"|bc)
done

#echo "$date ${temp_arrau[$date]}" 
echo "Computer Programming Fundamentals"
echo " first date = $(head -n 1 ~/tmp/weather_data.csv | awk -F',' '{ print $1 }')"
echo " last date = $(tail -n 1 ~/tmp/weather_data.csv | awk -F',' '{ print $1 }')"

echo "sum $sum"
echo "data points ${#temp_array[@]}"
echo average $(echo "scale=5 ; $sum / ${#temp_array[@]}" | bc)
maxmin
