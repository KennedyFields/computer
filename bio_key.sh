
read -p "Does the fungi form sexual spores on clublike basidia? " basidio
if [ $basidio = yes ]
  then
    echo "Phylum Basidiomycota"
elif [ $basidio = no ]
  then 
read -p "Does the fungi form sexual spores in saclike asci? " ascomy 
if [ $ascomy = yes ] 
  then
    echo "Phylum Ascomycota"
elif [ $ascomy = no ]
  then
read -p "Does the fungi form sexual spores where hyphae fuse? " zygom
if [ $zygom = yes ]
  then
    echo "Phylum Zygomycota"
elif [ $$zygom = no ]
  then
read -p "Does the fungi form spores with flagella? " chytrid
if [ $chytrid = yes ] 
  then 
    echo "Phylum Chytridiomycota"
elif [ $chytrid = no ]
  then
read -p "Does the fungi have no known method of reproduction? " deuter
if [ $deuter = yes ]
  then 
    echo "Phylum Deuteromycota"
elif [ $deuter = no ] 
  then 
read -p "Do the fungi look like protozoa for much of their lives? " myxom
if [ $myxom = yes ]
  then
    echo "Phylum Myxomycota"

fi
