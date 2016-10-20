function nextBracket {
  fagi=$1
  topOfBracket=$2
  taxRate=$3
  echo "Your marginal tax rate is : $taxRate"
  (( delta = $topOfBracket - $1 ))
  echo "$delta more dollars untill the next bracket"
} 

read -p "what is your federal adjusted gross income?" fagi

if [ $fagi -le 9275 ]; then  nextBracket $fagi 9275 10
elif [ $fagi -le 37650 ] && [ $fagi -gt 9276 ]; then nextBracket $fagi 37650 15   
elif [ $fagi -le 91150 ] && [ $fagi -gt 37651 ]; then nextBracket $fagi 91150 25   
elif [ $fagi -le 190150 ] && [ $fagi -gt 91151 ]; then nextBracket $fagi 190150 28
elif [ $fagi -le 413350 ] && [ $fagi -gt 190151 ]; then nextBracket $fagi 413350 33
elif [ $fagi -le 415050 ] && [ $fagi -gt 413351 ]; then  nextBracket  $fagi 415050 35
elif [ $fagi -gt 415051 ]; then echo 39.6 ; echo "you cant get any richer"
else echo "$fagi is not valid"
fi
