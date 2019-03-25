# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# some more ls aliases
alias ll='ls -al' # shirai: comment in

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

##############################
# User settings
##############################

#-----------------------------
# gcloud
#-----------------------------
#export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"

#-----------------------------
# aliases
#-----------------------------
#alias pbcopy='xsel --clipboard --input'

#source /usr/share/bash-completion/completions/git

#-----------------------------
# python
#-----------------------------
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# k8s
source <(kubectl completion bash)

# emacs
alias emacs='emacs -nw'
