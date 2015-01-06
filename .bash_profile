## set default editor
export EDITOR=vim


## rbenv
if [ -d "$HOME/.rbenv" ]; then
    export PATH="$HOME/.rbenv/bin:$PATH"
fi

if type "rbenv" >/dev/null 2>&1; then
    eval "$(rbenv init -)"
fi


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

