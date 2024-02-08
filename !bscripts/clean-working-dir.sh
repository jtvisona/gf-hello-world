#!/bin/bash
# Delete all TXT, DOT, and SVGs from the tutorial working directory
echo "Attempting to rm *.txt"
rm $GF_HELLO_WORLD/*.txt
echo "Attempting to rm *.dot"
rm $GF_HELLO_WORLD/*.dot
echo "Attempting to rm *.svg"
rm $GF_HELLO_WORLD/*.svg
echo "Working directory cleaned"