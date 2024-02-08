#!/bin/bash
if [ -z $1 ]; then
    echo "Missing <TARGET>.svg"
fi
echo "Opening ${1}"
/c/Program\ Files/Mozilla\ Firefox/firefox.exe -new-tab "file:///C:/Users/17082/Documents/github-repos/gf-hello-world/${1}"


