function years {
  "$year - 2001" | bc
}
for year in {2009..2016}
  do echo $years
done
