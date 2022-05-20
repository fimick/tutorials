#! /bin/bash
declare -i n
echo "enter a value for n"
read n
i=1
sum=0
 if [[ $n -ge 1 && $n -le 500 ]]
 then
     echo "enter a value for x"
     while [ $i -le $n ]
     do
       read x
       if [[ $x -ge -10000 && $x -le 10000 ]]
       then
           sum=$((sum + x))
	   i=$((i + 1))
	else
	   exit 1
       fi
       avg=$(echo $sum / $n | bc -l)
     done
    printf "the average input = %.2f" $avg
    
 fi