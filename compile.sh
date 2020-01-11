#!/bin/sh

for f in /app/specifications/*.tex
do
    echo "compiling $f"
    rubber -d $f
done

mkdir docs
mv *.pdf docs/