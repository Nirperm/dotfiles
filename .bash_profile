export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="/usr/local/mysql/bin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH="$HOME/.pyenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
eval "$(rbenv init -)"

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
eval "$(pyenv init -)"
