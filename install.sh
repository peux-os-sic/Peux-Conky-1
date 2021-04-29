#!/bin/bash

###########################################################
# Author - DN-debug
# Description - Peux OS XFCE Conky configuration script
###########################################################

if zenity --question --text="Want to proceed?"
then 

    dir="$HOME/.config/conky"

    # check if conky directory exists or not!
    if [[ ! -d $dir ]]; then
        # using two step process instead of one liner
        mkdir $dir
        mkdir -p $dir/design/one
    else
        mkdir -p $dir/design/one # one liner when parent folder is not available
    fi


    echo "changing directory"
    cd ../

    cp -r Peux-Conky-1/conky/* $dir/design/one
    notify-send 'Fetched folder has been moved to ~/.config/conky/design/'


else
    notify-send "Operation skipped!"
fi

rm -rf /tmp/fetcher/Peux-Conky-1
notify-send "Done!"





