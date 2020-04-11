#! /bin/bash
echo Enter the three numbers separated by a space
read A B C 
declare -a arr
computation["A+B+C"]=$((A+B+C))
computation["A*B+C"]=$((A*B+C))
computation["C+A/B"]=$((C+A/B))
computation["A%B+C"]=$((A%B+C))
for i in ${computation[@]}; do
    arr[((count++))]=$i
done