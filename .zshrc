fpath+=${ZDOTDIR:-~}/.zsh_functions

alias vim='nvim'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias glog='git log --stat --abbrev-commit'
eval "$(starship init zsh)"
