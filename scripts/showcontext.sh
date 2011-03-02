#!/bin/bash
inputfile=$1
targetline=$2
context=5
lines_from_start=$(($2 + 5))
context_size=$((2 * $context))
nl -ba $1 | head -$lines_from_start | tail -$context_size
