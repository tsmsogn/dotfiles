export PATH="/usr/local/bin:$PATH"

export GOPATH="$HOME/go"
export PATH="$PATH:$HOME/go/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# phpenv
export PATH="$HOME/.phpenv/bin:$PATH"
if which phpenv > /dev/null; then
    eval "$(phpenv init -)"
fi

if which rbenv > /dev/null; then
    eval "$(rbenv init -)";
fi

export PATH="$HOME/.pyenv/shims:$PATH"

if which pyenv > /dev/null; then
    eval "$(pyenv init -)"; 
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
