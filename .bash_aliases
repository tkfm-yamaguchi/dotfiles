# coding: utf-8


## directory traversings
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias groot='cd $(git rev-parse --show-toplevel)'


# peco
if type "peco" >/dev/null 2>&1; then

    # ghq
    if type "ghq" >/dev/null 2>&1; then

        ## search repository
        alias c='cd $(ghq list -p | peco)'

    fi

fi


# by env
case `uname -s` in
    "Darwin" )

        ## colored ls
        alias ls='ls -G'

        ## MacVim Kaoriya
        if [ -f "/Applications/MacVim.app/Contents/MacOS/Vim" ]; then
            alias vi=' env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
            alias vim='env_LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
        fi

        ## hardware info
        # The list of informations could be retrieve via:
        #   $ system_profiler -listDataTypes
        alias hwinfo='system_profiler SPHardwareDataType'

        ;;


    "Linux" )

        ## colored ls
        alias ls='ls --color'

        ## want to use pbcopy on linux
        if type xsel >/dev/null 2>&1; then
            alias pbcopy='xsel --clipboard --input'
        fi

        ;;
esac


# vim: ft=sh
