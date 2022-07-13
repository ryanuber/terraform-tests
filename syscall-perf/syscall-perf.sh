#!/bin/bash
set -e

echo "begin `date`"
touch {0..100000}
rm {0..100000}
echo "end `date`"
