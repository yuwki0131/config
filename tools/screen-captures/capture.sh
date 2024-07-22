#!/bin/bash

# screen capture
# required: wl-clipboard, glim, slurp

timestamp=$(date +'%Y-%m-%d_%H-%M-%S')
output_dir=~/
output_file="${output_dir}/screenshot_${timestamp}.png"
grim $output_file


if [ "$1" == "full" ]; then
    grim $output_file
elif [ "$1" == "region" ]; then
    grim -g "$(slurp)" $output_file
fi

if [ "$2" == "clipboard" ]; then
    cat $output_file | wl-copy
    rm $output_file
fi
