#!/bin/sh

i=0

sleep 999 &
SLEEP_PID=$!

date
while [ $i -lt 10000 ]; do
    i=$((i+1))
    kill -19 $SLEEP_PID
done
date

kill $SLEEP_PID
