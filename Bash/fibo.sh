#!/bin/bash

fibo(){
    i=0;
    j=1;
    count=0;
    fibo=0;
    while [[ $count != $1 ]]; do
        let "fibo=$i+$j"
        printf "$i \n$j \n$fibo\n\n"
        let "i=$fibo+$j"
        let "j=$i+$fibo"
        let "count++"
    done
}

fibo $1