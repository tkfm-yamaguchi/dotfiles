## set default editor
export EDITOR=vim


## rbenv
if [ -d "$HOME/.rbenv" ]; then
    export PATH="$HOME/.rbenv/bin:$PATH"
fi

if type "rbenv" >/dev/null 2>&1; then
    eval "$(rbenv init -)"
fi

## nvm
export NVM_DIR="$HOME/.nvm"
if type brew >/dev/null 2>&1 ; then
    nvm_sh="$(brew --prefix nvm)/nvm.sh"
else
    nvm_sh="${HOME}/.nvm/nvm.sh"
fi

[[ -f "${nvm_sh}" ]] && source "${nvm_sh}"


## golang
if [ -d "$HOME/local/opt/go" ]; then
    export PATH="$HOME/local/opt/go/bin:$PATH"
fi

if type "go" >/dev/null 2>&1; then
    export GOPATH="$HOME/local"
fi


## local packages
# installed by hgq, go get, etc.
if [ -d "$GOPATH/bin" ]; then
    export PATH="$GOPATH/bin:$PATH"
fi


## aliases
if [ -f "$HOME/.bash_aliases" ]; then
    source "$HOME/.bash_aliases"
fi


# Add vim path
if [ "`uname`" == "Darwin" ]; then
    export PATH="/Applications/MacVim.app/Contents/MacOS:$PATH"
fi

# OPAM configuration
if [ -f "$HOME/.opam/opam-init/init.sh" ]; then
    . $HOME/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
