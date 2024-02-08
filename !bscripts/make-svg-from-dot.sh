#!/bin/bash

source_dot=$1
target_svg=$2

if [ -z $source_dot ]; then
    echo "Usage: make-svg-from-dot.sh <source w/o .dot> and <target w/o .svg>"
else
    source_dot=$1.dot
    if [ -z $target_svg ]; then
        # Use the name of the source DOT for SVG output if not present
        target_svg=$1.svg
    else
        # Use the name of the SVG output provided
        target_svg=$2.svg
    fi

    # EX: $ make-svg-from-dot.sh input-tree output
    echo "Converting $source_dot to $target_svg"
    dot -Tsvg < $source_dot > $target_svg
    echo "Converted $source_dot to $target_svg"
fi


