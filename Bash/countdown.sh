#!/bin/bash

count(){
    if [[ -z $1 || $1 == 0 ]]; then
        printf "The argument is too low\n"
        exit
    fi

    min=$1;
    sec=59;

    let "min--"

    while [[ $min != 0 || $sec != 0 ]]; do
        clear
        printf "    ________ COUNTDOWN ______\n\n"
        printf "             [ $min : $sec ]\n"
        sleep 1s

        if [[ $sec == 0 ]]; then
            let "min--"
            let "sec=60"
        fi
        let "sec--"
    done

    printf "EXIT"
}

count $1
