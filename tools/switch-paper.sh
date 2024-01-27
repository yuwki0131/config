#!/bin/bash

link_path=~/myconfig/wallpaper
link_for_edp1=~/myconfig/wallpaper_2880x1800
link_for_hdmia1=~/myconfig/wallpaper_3840x2160

if [ ! -e $link_path ]; then
    ln -s $link_for_edp1 $link_path
    echo 'created wallpaper path'
else
    current_target=$(readlink -f $link_path)

    if [ $current_target == $link_for_edp1 ]; then
        ln -sfn $link_for_hdmia1 $link_path
        echo 'switched to files for HDMI-A-1'

    elif [ $current_target == $link_for_hdmia1 ]; then
        ln -sfn $link_for_edp1 $link_path
        echo 'switched to eDP-1'

    else
        echo 'invalid symbolic link: wallpaper'
    fi
fi
