#!/bin/sh

i=0

sleep 999 &
SLEEP_PID=$!

echo "begin `date`"
while [ $i -lt 10000 ]; do
    i=$((i+1))
    kill -19 $SLEEP_PID
done
echo "end `date`"

kill -9 $SLEEP_PID
