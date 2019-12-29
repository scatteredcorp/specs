#!/bin/sh

for f in /app/*.tex
do
    rubber -d $f
done

mkdir output
mv *.pdf output/