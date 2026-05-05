#!/bin/bash

for((i=5;i>=1;i--))
do

for((j=1;j>=5-i;j++))
do

echo -n " "
done

for((k=5;k>=i;k--))
do

echo -n " $k"
done

echo " "
done

