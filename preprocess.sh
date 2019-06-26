#!/bin/bash

# bzip the files so they run faster
# used lbzip2 instead of bzip2 for (parallel?) faster zipping
for file in $(ls); do
    if [[ $file == *.txt ]] && [[ $file != *.gz ]] && [[ $file != *.sh ]]; then
        lbzip2 $file;
    fi
done