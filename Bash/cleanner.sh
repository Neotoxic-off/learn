#!/bin/bash

printf "File : "
read file

mv $file $file.old
cat $file.old | sed 's/\r//g' > $file
chmod +x $file
printf "\n\n\nDone"
