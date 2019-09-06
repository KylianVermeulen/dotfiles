#Brew
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH

#GPG
export GPG_TTY=$(tty)

# The next line updates PATH for the Google Cloud SDK.
source "/Users/$(whoami)/google-cloud-sdk/path.zsh.inc"
# The next line enables shell command completion for gcloud.
source "/Users/$(whoami)/google-cloud-sdk/completion.zsh.inc"

# The next lines enables pyenv and pyenv-virtualenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# NVM Stuff
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"
