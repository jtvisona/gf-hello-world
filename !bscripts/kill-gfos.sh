#!/bin/bash
# this is a hack; fix!
# This uses find to locate all files of GF objects (*.gfo) and delete them
echo "Finding GFOs:"
echo $(find $GF_HELLO_WORLD -name "*.gfo" -type f)
find $GF_HELLO_WORLD -name "*.gfo" -type f -delete
echo "Any existing GFOs have been eliminated"
