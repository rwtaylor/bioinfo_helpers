#!/bin/bash
# This converts a fasta into a bed file.
# Input from stdin or file. Output is stdout

while read line; do
	bioawk -c fastx '{print $name"\t0\t"length($seq)}' $1
done < <(cat "$1" /dev/stdin)

