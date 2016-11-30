function average {
    echo average $(echo "scale=1 ; $sum /  " | bc)
}

function number {
  echo $(read -p "Enter a number, DONE when done: ")    
}

  number
  read -p "Enter number: "     numberB

