#!/bin/bash

#---------------
# INSTALLER
#---------------

# The folder /bin is the folder where all the commands are located
# so if you copy your own program in it, you can call it from every where

# INSTALLER

missing(){
    printf "FILE NOT FOUND\n"
    exit
}

installer(){

    # Check if the file to copy exists
    if [[ -f $1 ]]; then
        printf "[+] File found\n"

        # Adding the right to execute the file
        chmod +x $1


        # Check if the program is already installed
        if [[ -f "/bin/$1" ]]; then
            printf "[+] Script already installed\n"

            # Asking for update or no
            printf "\n[+] Do you want to update ? [ y / n ]"
            read update

            if [[ $update == 'y' ]]; then
                printf "Updating\n"

                # Removing the old file
                # And copying it on the bin folder
                sudo rm /bin/$1
                cp $1 /bin/
            else
                printf "Don't update\n"
                exit
            fi

        else
            printf "[+] Installing\n"
            cp $1 /bin/
        fi

        # Check if the file is now into the folder /bin
        if [[ -f "/bin/$1" ]]; then
            printf "[+] Installation successful\n"
            exit
        fi
    else
        missing
    fi
}

installer $1