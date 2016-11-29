function average {
    echo average $(echo "scale=1 ; $sum / ${3[@]}" | bc)
}

read -p "How tall are you in inches?"  height
read -p "How tall is your mom in inches?"  momheight
read -p "How tall is your dad in inches?"  dadheight

sum=$(( $height + $momheight + $dadheight ))

#for temp in $(seq 0 $samples); do
 # sum=$(echo "$sum + ${temp_array[$temp]}"|bc)
#done
echo "average $average"

