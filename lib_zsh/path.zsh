#Brew
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH

#GPG
export GPG_TTY=$(tty)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/$(whoami)/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/$(whoami)/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/$(whoami)/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/$(whoami)/google-cloud-sdk/completion.zsh.inc'; fi

export GOPATH=$HOME/go

# added by Anaconda3 2019.10 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/kylianvermeulen/opt/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/kylianvermeulen/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/kylianvermeulen/opt/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/kylianvermeulen/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

export PYTHON_DATABASE_URI='sqlite:///mastermind.db'
