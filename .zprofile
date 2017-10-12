export PATH=/usr/local/bin:$PATH

export GOPATH=$HOME/go
export PATH=$PATH:$HOME/go/bin

export NVM_DIR=$HOME/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

if which rbenv > /dev/null; then
    eval "$(rbenv init -)";
fi

export PATH=$HOME/.pyenv/shims:$PATH

if which pyenv > /dev/null; then
    eval "$(pyenv init -)"; 
fi

# opencv
export PATH="/usr/local/opt/opencv/bin:$PATH"

# phpbrew
export PHPBREW_SET_PROMPT=1
export PHPBREW_RC_ENABLE=1
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
