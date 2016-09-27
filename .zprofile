export PATH=/usr/local/bin:$PATH

export GOPATH=$HOME/go
export PATH=$PATH:$HOME/go/bin

if which rbenv > /dev/null; then
    eval "$(rbenv init -)";
fi
