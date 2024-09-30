export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/Users/$(whoami)/google-cloud-sdk/bin/:$PATH
export PATH=/Users/kylianvermeulen/dotfiles/lib_func:$PATH
export PATH="/usr/local/share/dotnet:$PATH"
export PATH=$PATH:$HOME/dotnet
export PATH=$PATH:/Users/kylianvermeulen/.local/bin

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export GOROOT="$(brew --prefix golang)/libexec"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

export GPG_TTY=$(tty)
export EDITOR=vim
export DOTNET_ROOT=$HOME/dotnet

export PATH=$PATH:/Users/kylianvermeulen/.composer/vendor/bin
