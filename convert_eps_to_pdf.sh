#!/bin/bash

for file in *.eps; do
    epstopdf "$file" --outfile="${file%.eps}.pdf"
done

