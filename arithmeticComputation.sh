#!/bin/bash -x

read -p "Enter values fro a, b & c:" a b c
declare -A compute
compute["a+b*c"]=$(( $a + ($b  * $c )))
compute["a*b+c"]=$((( $a * $b ) + $c ))
compute["c+a/b"]=$(( $c + ( $a  / $b )))
compute["a%b+c"]=$((( $a % $b ) +  $c ))
i=0
for key in "${!compute[@]}";
do
	array[((i++))]=$((compute[$key]))
done
echo ${array[@]}
