# coding: utf-8


# peco
if type "peco" >/dev/null 2>&1; then

    # ghq
    if type "ghq" >/dev/null 2>&1; then

        ## search repository
        alias c='cd $(ghq list -p | peco)'

    fi

fi


case `uname -s` in
    "Darwin" )

        ## colored ls
        alias ls='ls -G'

        ## MacVim Kaoriya
        alias vi=' env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
        alias vim='env_LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

        ;;


    "Linux" )

        ## colored ls
        alias ls='ls --colored'


        ;;
esac


# vim: ft=sh
