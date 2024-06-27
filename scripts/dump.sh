#!/bin/bash

# Function to recursively traverse directories and print file contents
traverse_and_print() {
    local dir="$1"
    local prefix="$2"
    
    for entry in "$dir"/*; {
        if [ -d "$entry" ]; then
            traverse_and_print "$entry" "$prefix    "
        elif [ -f "$entry" ]; then
            echo "${prefix}File: $entry"
            cat "$entry"
            echo
        fi
    }
}

# Starting from the top-level directory
tree
traverse_and_print "." ""

