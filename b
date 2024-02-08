#!/bin/bash

# b - The GF bash utility
version=1.2
lessons_dir="$GF_HELLO_WORLD/!lessons"
bashscripts_dir="$GF_HELLO_WORLD/!bscripts"
b_help_file=b-help.txt
current_grammar_file=b-current-grammar.txt
javascripts_dir="$GF_HELLO_WORLD/!javascripts"
verbose=$(cat $bashscripts_dir/b-verbose.txt)

if [  ]; then # FIX ME
    echo "\$verbose=$verbose"
    echo "Verbose output enabled"
    echo "Bashscripts directory: '$bashscripts_dir'"
    echo Executing "'$0 $@'"
    echo "Detected $# argument(s)"
    echo "Arguments: $*"
    echo
fi

# The first argument to the script is the b-command and subsequent script arguments are command sub-arguments
cmd=$1
subarg_one=$2  
subarg_two=$3
subarg_three=$4

# Ensure first argument is not null; if it is, give instructions
if [ -z $cmd ]; then 
    echo \$cmd = $cmd
    echo "Usage: b <command> [<arg1>] [<arg2>] [<arg3>]"

# Display the version
elif [ $cmd = ver ]; then
    # EX: $ b ver
    echo "Version: $version"

elif [ $cmd = env ]; then
    # EX: $ b envvars
    $bashscripts_dir/show-env-vars.sh    

# Display an introductory message
elif [ $cmd = lesson ]; then
    # EX: $  b lesson intro1
    target_lesson=$subarg_one
    if [ -n $target_lesson ]; then
        target_lesson=$lessons_dir/$subarg_one.lesson
        if [ -e $target_lesson ]; then
            cat $target_lesson | less
        else
            echo "Lesson $target_lesson doesn't exist"
        fi
    else
        echo "Usage: b lesson <name w/o .lesson>"
    fi

# Display the commands that are available below
elif [ $cmd = help ]; then
    # EX: $  b help
    cat $bashscripts_dir/$b_help_file | less

# Provides some basic information about the execution environment
elif [ $cmd = syseval ]; then
    # EX: $ b system-eval
    $bashscripts_dir/system-eval.sh
    cat system-eval.txt

# This is just a sample script run from b
elif [ $cmd = hello ]; then
    # EX: $ b hello
    $bashscripts_dir/hello-world.sh

# Produces a new GF example directory from the Template directory
elif [ $cmd = new ]; then
    # EX: $ b new
    target_dir=$subarg_one
    $bashscripts_dir/make-new-example.sh $target_dir

# Set a directory to represent the current grammar being worked on
elif [ $cmd = grammar ]; then
    # EX: '$ 'b grammar', '$ b grammar Tutorial/Hello'
    current_grammar=$subarg_one

    # No grammar is specified, so output current grammar
    if [ -z $current_grammar ]; then
        echo $(cat $bashscripts_dir/$current_grammar_file)
    # If a grammar is specfied set it; ADD CHECK 
    else [ -n $subarg_one ]; 
        echo "Selecting '$current_grammar' as current grammar"
        echo $current_grammar > $bashscripts_dir/$current_grammar_file
    fi

# Display files of a grammar
elif [ $cmd = show ]; then
    # EX: '$ 'b show'
    target_dir=$(cat $bashscripts_dir/$current_grammar_file)
    ls $target_dir

# Open a grammar from the default grammar
elif [ $cmd = open ]; then
    #echo "COMPLETE ARGUMENT VALIDATION AND USAGE"
    # EX: $ b open Hello
    target_file=$subarg_one
    target_grammar=$GF_HELLO_WORLD/$(cat $bashscripts_dir/$current_grammar_file)/$target_file"Eng.gf"
    echo "Opening in GF '$target_grammar'"
    gf $target_grammar

# Make an SVG file from a DOT file
elif [ $cmd = makesvg ]; then
    #EX: $ make-svg-from-dot.sh tree.dot tree.svg
    source_dot=$subarg_one
    target_svg=$subarg_two
    $bashscripts_dir/make-svg-from-dot.sh $source_dot $target_svg

# Parse a GF command and pipe it to a DOT file, and then convert to SVG and open
elif [ $cmd = parseopen ]; then
  #echo "COMPLETE ARGUMENT VALIDATION AND USAGE"
    if [ $verbose ]; then
        echo "Executing '$bashscripts_dir/parse-and-open-svg.sh \"$source_dot\" $source_grammar $target_svg'"
    fi

    # EX: $ parse-and-open-svg.sh "generate_random" "./Food" random-food
    source_dot=$subarg_one  #script below appends file extensions
    source_grammar=$subarg_two
    target_svg=$subarg_three
    $bashscripts_dir/parse-and-open-svg.sh $source_dot $source_grammar $target_svg

# Open an svg
elif [ $cmd = opensvg ]; then
   #echo "COMPLETE ARGUMENT VALIDATION AND USAGE"
    # EX: $ b opensvg random_food
    target_svg=$subarg_one.svg
    $bashscripts_dir/open-svg.sh $target_svg

# Deletes various files in the working directory
elif [ $cmd = clean ]; then
    # EX: $ b clean
    $bashscripts_dir/clean-working-dir.sh

# Since GFOs are larger, this deletes them in all directories
elif [ $cmd = killgfos ]; then
    # EX: $ b killgfos
    $bashscripts_dir/kill-gfos.sh

# Read ttdl
elif [ $cmd = ttdl ]; then
    # EX: $ b ttdl
    echo "$(cat !notes/ttdl.notes)" # Embedding string required for ML output

# Read ttdl
elif [ $cmd = ttdladd ]; then
  #echo "COMPLETE ARGUMENT VALIDATION AND USAGE"
    # EX: $ b ttdladd "Adding this note to TTDL"
    note=$subarg_one
    echo "$subarg_one" >> !notes/ttdl.notes # Embedding for ML input

# Run GF scripts
elif [ $cmd = gfs ]; then
    gs_script=$GF_HELLO_WORLD/$subarg_one.gfs
    gs_script_output=$GF_HELLO_WORLD/$subarg_one-output.txt
    #DEBUG
            echo "\$gs_script="$gs_script
            echo "\$gs_script_output="$gs_script_output
    if [ -z $gs_script ]; then
        # Missing script name
        echo "Usage: gfs <scriptname w/o .gfs>"
    else
        # Run GF script, log results, and display log
        echo $(gf --run < $gs_script > $gs_script_output )
        cat $gs_script_output
    fi

# Run JavaScript
elif [ $cmd = js ]; then
    js_script=$subarg_one
    if [ -z $js_script ]; then
        # Missing script name
        echo "Usage: js <scriptname w/o .js>"
    else
        script_name=$subarg_one.js
        javascript="$javascripts_dir/$script_name"
        output_name="$subarg_one-output.txt"
        echo "Attempting to execute '$ node.exe < $javascript > $output_name'"
        node.exe < $javascript > $output_name
        echo "Displaying $output_name"
        echo ">>>"
        cat $output_name
        echo "<<<"
    fi
else
    echo "'b $cmd' is invalid command. Type '$ b help' for a list of commands."
fi
