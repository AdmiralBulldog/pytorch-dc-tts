#!/bin/bash

folder=$1

i=0;
for filename in ${folder}/*.wav; do
    i=$((i+1));
    sox "$filename" -r 22050 -b 16 -c 1 "file$i.wav"
    # mv "file$i.wav" "$filename"
done
