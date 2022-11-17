fpath+=${ZDOTDIR:-~}/.zsh_functions
fpath+=${ZDOTDIR:-~}/.zsh_completions

export PATH=$PATH:/usr/local/go/bin:$HOME/.local/bin
#export TERM=alacritty

if [[ -x "/usr/bin/nvim" ]]; then
	alias vim='nvim'
else
	unalias vim 2>/dev/null
fi

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias glog='git log --stat --abbrev-commit'
alias tb='CONTAINER_HOST=unix:///run/user/1000/podman/podman.sock toolbox -u'
alias osco='osc -A https://api.opensuse.org'
alias osci='osc -A https://api.suse.de'
alias ls='exa -la'
alias lst='exa -T'
eval "$(starship init zsh)"
