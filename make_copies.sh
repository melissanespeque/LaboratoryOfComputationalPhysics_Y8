#!/bin/bash

n=$1   # input parameter

for ((i=1; i<=n; i++)); do
    awk -v div="$i" '{ 
        for(j=1; j<=NF; j++) 
            printf "%g%s", $j/div, (j==NF?ORS:OFS) 
    }' OFS=" " data.txt > data_$i.txt
done

