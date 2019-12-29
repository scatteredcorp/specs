#!/bin/sh

for f in /app/*.tex
do
    rubber -d $f
done

mkdir docs
mv *.pdf docs/