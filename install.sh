#!/bin/bash
# set -e

function changeowner() {
        if command -v "doas" &> /dev/null ; then
            doas chown -R $USER:$USER ./*
        else
            sudo chown -R $USER:$USER ./*
        fi
}

changeowner

function install() {
    if [[ ! -f /usr/local/bin/ltranslate ]] ; then
        printf 'installing ltranslate to /usr/local/bin ...\n'
        if command -v "doas" &> /dev/null ; then
            doas cp ltranslate /usr/local/bin/
            doas chmod 755 /usr/local/bin/ltranslate
        else
            sudo cp ltranslate /usr/local/bin/
            sudo chmod 755 /usr/local/bin/ltranslate
        fi
    else
        read -e -r -p "ltranslate already installed, would you like to reinstall?(y/n): " reinstall
        if [[ $reinstall == "y" || $reinstall == "yes" ]] ; then
            if command -v "doas" &> /dev/null ; then
                doas cp ltranslate /usr/local/bin/
                doas chmod 755 /usr/local/bin/ltranslate
            else
                sudo cp ltranslate /usr/local/bin/
                sudo chmod 755 /usr/local/bin/ltranslate
            fi
        else
            printf "install script exiting, no changes were made to bgit.\n"
        fi
    fi
}

install
