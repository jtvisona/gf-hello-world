#!/bin/bash

# Collect some of the details about the execution environment
output="b system evaluation"$'\n'$'\n' # Can't interpret $'\n'
output="$output$($GF_HELLO_WORLD/b ver)"$'\n' # Interpreting $output forces a space after that shows up in output
output=$output"Date: $(date)"$'\n'
output=$output"User: $(whoami)"$'\n'
output=$output"User home: $(cd ~; pwd)"$'\n'
output=$output"Working Directory: $(pwd)"$'\n'$'\n'
output=$output"CAT .bash_profile>>>"$outputListing$'\n'$(cat ~/.bash_profile)$'\n'"<<<CAT .bash_profile"$'\n'$'\n'
output=$output"LS pwd>>>"$outputListing$'\n'$(ls -F)$'\n'"<<<LS pwd"$'\n'$'\n'
output=$output"<<<B env"$'\n'$($GF_HELLO_WORLD/b env)$'\n'"B env>>>"
echo "$output" > system-eval.txt
