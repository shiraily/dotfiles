# ~/.zshrc: executed by zsh(1) for non-login shells.

# Enable
setopt interactivecomments

# Alias definitions
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

#-----------------------------
# Commands
#-----------------------------

# JAVA (used for flutter)
export JAVA_HOME=$(/usr/libexec/java_home)

# gcloud
# export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"

# k8s
source <(kubectl completion zsh)

# git
# zstyle ':completion:*:*:git:*' script $HOME/git-completion.zsh
fpath=(~/.zsh/functions $fpath)
autoload -Uz compinit && compinit
source $HOME/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

# prompt script
setopt PROMPT_SUBST;
PS1='[%c$(__git_ps1 " (%s)")]\$ '
# PS1='$ '

# jqの結果を色保持したままlessで表示
func jqless() {
    cat $1 | jq . -C | less -R
}

func gccfg() {
    gcloud config configurations activate $1
}

export PATH="$(yarn global bin):$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# use kubectl for GKE
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
