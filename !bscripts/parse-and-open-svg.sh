#!/bin/bash
# Take argument one and pipe it to GF to write it out as dot using the visualize_tree command using grammar in argument two.
# Be aware not all commands supported in the interpreter are supported in compiler?
#if [ -z $1 ] || [ -z $2 ]  || [ -z $3 ]
#    echo "make-dot.sh <gf command> <gf grammar>"
#    echo "make-dot.sh 'gr' 'Hello.gf'"
#else
    gf_command=$1
    gf_grammar=$2
    source_dot=$3.dot
    target_svg=$3.svg

    # Invokes gf after importing the $gf_grammar, uses $gf_command, outputs $source_dot, and converts to $target_svg
    # EX: $ echo "gr | vt | wf -file=\"food.dot\"" | gf --run ./Food/FoodEng.gf
    echo "Visualizing '$gf_command' executed with grammar '$gf_grammar' and writing to file '$source_dot'"
    echo "$gf_command | vt | wf -file=\"$source_dot\"" | gf --run $gf_grammar
    echo "Converting '$source_dot' to '$target_svg'"
    ./bashscripts/make-svg-from-dot.sh $source_dot $target_svg
    echo "Opening $target_svg"
    ./bashscripts/open-svg.sh $target_svg
#fi

