#!/bin/sh

# Configure your favorite diff program here.
DIFF="/home/ygaikwad/p4v/bin/p4merge"

# Subversion provides the paths we need as the sixth and seventh
# parameters.
BASE=${1}
REMOTE=${2}
MINE=${3}
MERGED=${4}

# Call the diff command (change the following line to make sense for
# your merge program).
$DIFF $BASE $MINE $REMOTE $MERGED

# Return an errorcode of 0 if no differences were detected, 1 if some were.
# Any other errorcode will be treated as fatal.
