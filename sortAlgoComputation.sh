#! /bin/bash
echo Enter the three numbers separated by a space
read A B C 
declare -a arrAscend
declare -a arrDescend
computation["A+B+C"]=$((A+B+C))
computation["A*B+C"]=$((A*B+C))
computation["C+A/B"]=$((C+A/B))
computation["A%B+C"]=$((A%B+C))
for i in ${computation[@]}; do
    arrAscend[((count1++))]=$i
done
length=${#arrAscend[@]}
for ((i = $((length - 1)) ; i >= 0 ; i--))  do
    arrDescend[((count2++))]=${arrAscend[i]}
done
 