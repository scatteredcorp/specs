#!/bin/sh

for d in /app/specifications/**.tex
do
    rubber -d $f
done

mkdir docs
mv *.pdf docs/