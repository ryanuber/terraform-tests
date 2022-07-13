#!/bin/sh

mkdir tmp

i=0
echo "begin `date`"
while [ $i -lt 10000 ]; do
    i=$((i+1))
    touch $i
done
echo "end `date`"
