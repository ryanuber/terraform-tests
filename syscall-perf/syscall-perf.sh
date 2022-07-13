#!/bin/bash

echo "begin `date`"
touch {0..50000}
rm {0..50000}
echo "end `date`"
