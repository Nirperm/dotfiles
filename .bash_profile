# MySQL
export PATH="/usr/local/mysql/bin:$PATH"

# bin
export PATH=/usr/local/bin:$PATH

# rm alias trash app
alias rm=trash

#direnv
export EDITOR=vim
eval "$(direnv hook bash)"

# Anyenv 

export PATH="$HOME/.anyenv/bin:$PATH"
if which anyenv > /dev/null; then eval "$(anyenv init -)"; fi
#eval "$(anyenv init -)"

# Android SDK for Oculus 
export PATH=$PATH:/Users/kurt/Library/Android/sdk/platform-tools

#nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

#pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
#eval "$(pyenv init -)"

#goenv
export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH
export PATH=$HOME/.goenv/bin:$PATH
if which goenv > /dev/null; then eval "$(goenv init -)"; fi
# eval "$(goenv init -)"

#Golang
#export GO111MODULE=auto
export GOROOT=$(go env GOROOT) 
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
