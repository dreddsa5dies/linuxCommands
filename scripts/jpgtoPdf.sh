#!/bin/bash

A=$(ls *.jpg)

for i in $A
do
	lp -d PDF $i
done
exit 0
