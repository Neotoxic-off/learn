#!/bin/bash

printf "File : "
read file

bash -c "mv $file $file.old"
bash -c "cat $file.old | sed 's/\r//g' > $file"
bash -c "chmod +x $file"
printf "\n\n\nDone"