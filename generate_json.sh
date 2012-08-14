#!/bin/bash

HERE=$(cd `dirname $0`; pwd)
L20N=$HOME/moz/code/l20n

source $L20N/@l20n/bin/activate

DUMP=$L20N/py/tools/dump_lol.py
OPTS="-t json"

for LOL in $(ls -1 $HERE/*.lol);
do
    NAME=$(basename $LOL .lol);
    echo -n "  parsing $LOL..."
    python $DUMP $OPTS $LOL > $HERE/json/${NAME}.json
    echo " done"
done
