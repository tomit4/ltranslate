#!/bin/bash
# set -e

function uninstall() {
    if [[ -f /usr/local/bin/ltranslate ]] ; then
        if command -v "doas" &> /dev/null ; then
            doas rm /usr/local/bin/ltranslate
            printf "removing /usr/local/bin/ltranslate ...\n"
        else
            sudo rm /usr/local/bin/bgit
            printf "removing /usr/local/bin/ltranslate ...\n"
        fi
    fi
}

uninstall
