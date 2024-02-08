#!/bin/bash
if [ -z %1 ]; then
    echo "b new <example_name>"
else
    cp -r Template/ $1
fi
