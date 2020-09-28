#!/usr/bin/bash

Createfiles(){
    mkdir -p ~/.local/regy
    touch "$HOME/.local/regy/datelist"
    touch "$HOME/.local/regy/todo"
}

Gendates(){
today=$(date "+%D")
numofdays="1"
    while [[ $numofdays -lt 121 ]]; do
    newdate=$(date -d "$today + $numofdays day" "+%b %d %Y")
    echo $newdate
    numofdays=$(($numofdays + 1))
done > "$HOME/.local/regy/datelist"
}

Createfiles
Gendates