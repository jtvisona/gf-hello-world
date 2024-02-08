#!/bin/bash
version=1.0

#echo "Detected $# arguments"
#echo "Arguments are $"
cmd=$1                     # no spaces allowed
subarg_one=$2  
subarg_two=$3
subarg_three=$4
#echo The first argument is \'${arg_one:?"first argument required"}\'    # die if not populated
#echo The second argument is \'${arg_two:="assigned NULL"}\'             # assign and return 'NULL' 
#echo The third argument is \'${arg_three:-"returned NULL"}\'            # return non-null value or 'NULL'
#arg_four=$4
#echo The fourth argument is \'${arg_four:+"arg_four exists"}\'         # test existence

if [ -z $cmd ]; then    # IsNull()
    echo "Executing 'bgf $@'"
    echo \$cmd = $cmd
    echo "Use bgf COMMAND ARG1 ARG2 ..."
elif [ $cmd = ver ]; then
    echo bgf version $version
elif [ $cmd = help ]; then
    echo "hello help mksvg mkdot opensvg clean kill"
elif [ $cmd = syseval ]; then
    ./bashscripts/system-eval.sh
elif [ $cmd = hello ]; then
    ./bashscripts/hello-world.sh
elif [ $cmd = mksvg ]; then
    ./bashscripts/make-svg-from-dot.sh $subarg_one $subarg_two
elif [ $cmd = mkdot ]; then
    gf --run < ./Food/foodscript-makedot.gfs
elif [ $cmd = opensvg ]; then
    ./bashscripts/open-svg.sh $subarg_one
elif [ $cmd = clean ]; then
    ./bashscripts/clean-working-dir.sh
elif [ $cmd = kill ]; then
    ./bashscripts/kill-gfos.sh
fi