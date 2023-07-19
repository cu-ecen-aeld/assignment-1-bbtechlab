#!/bin/bash
if [ $# -lt 2 ]
then
    echo "No arguments, Usage: ./writer filename contents"
    exit 1
fi

filename=$1
writestr=$2

writedir="$(dirname $filename)"

if [ ! -d $writedir ]
then
    echo "$writedir does not represent a directory on the filesystem, create it"
    mkdir -p $writedir
fi

echo "$writestr" > "$filename" || echo "Write failed with exit code $?"
