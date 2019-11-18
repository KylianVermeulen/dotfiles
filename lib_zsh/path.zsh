#Brew
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH

#GPG
export GPG_TTY=$(tty)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kylianvermeulen/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kylianvermeulen/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kylianvermeulen/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kylianvermeulen/google-cloud-sdk/completion.zsh.inc'; fi

# The next lines enables pyenv and pyenv-virtualenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

export GOPATH=$HOME/go
