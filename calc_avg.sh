function average {
    #echo "scale=2 ; $sum / $3" | bc
    echo average $(echo "scale=1 ; $sum / 3" | bc)
}

read -p "how tall are you in inches? "  height
read -p "how tall is your mom in inches? "  momheight
read -p "how tall is your dad in inches? "  dadheight

sum=$(( $height + $momheight + $dadheight ))

#for temp in $(seq 0 $samples); do
 # sum=$(echo "$sum + ${temp_array[$temp]}"|bc)
#done
average

