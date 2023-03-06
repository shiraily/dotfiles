#-----------------------------
# Languages
#-----------------------------

# Go
export GOPATH=$HOME/golang
export PATH=$PATH:/usr/local/go/bin:${PATH}:$(go env GOPATH)/bin

# Ruby - rbenv
export PATH=$PATH:$HOME/.rbenv/bin

# Python pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - --no-rehash)"

# Python pipenv
export PATH=$PATH:$HOME/.local/bin

# flutter
export PATH=$PATH:$HOME/development/flutter/bin

# nodenv
PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

#-----------------------------
# Commands
#-----------------------------

# The next line updates PATH for the Google Cloud SDK.
source $HOME/google-cloud-sdk/path.zsh.inc
# The next line enables shell command completion for gcloud.
source $HOME/google-cloud-sdk/completion.zsh.inc
