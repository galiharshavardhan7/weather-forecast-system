#!/bin/bash

echo "== Wheather history=="

if [ -f wheather_history.tsv ]; then

cat wheather_history.tsv
else
	echo "No wheather records found"
fi



