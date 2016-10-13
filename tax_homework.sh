function nextBracket {
 echo "nextBracket" 
} 

read -p "what is your federal adjusted gross income?" fagi

if [ $fagi -le 9275 ]; then echo 10; nextBracket
elif [ $fagi -le 37650 ] && [ $fagi -gt 9276 ]; then echo 15; nextBracket #15percent $income
elif [ $fagi -le 91150 ] && [ $fagi -gt 37651 ]; then echo 25; nextBracket #25percent $income
elif [ $fagi -le 190150 ] && [ $fagi -gt 91151 ]; then echo 28; nextBracket #28percent $income
elif [ $fagi -le 413350 ] && [ $fagi -gt 190151 ]; then echo 33; nextBracket #33percent $income
elif [ $fagi -le 415050 ] && [ $fagi -gt 413351 ]; then echo 35; nextBracket #35percent $income
elif [ $fagi -gt 415051 ]; then echo 39.6 
else echo "$income is not valid"
fi
