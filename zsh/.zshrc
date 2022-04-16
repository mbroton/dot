# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Select zsh theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Autostart tmux (works only with tmux plugin)
ZSH_TMUX_AUTOSTART="true"
ZSH_TMUX_AUTOCONNECT="false"

plugins=(git colored-man-pages command-not-found git-extras node tmux)
source $ZSH/oh-my-zsh.sh

# User configuration

# Aliases
alias ls='ls --color=auto -A'

# Todo test
ve() {
    source $1/bin/activate
}
#alias ve='source venv/bin/activate'
alias vc='virtualenv'
alias vd='deactivate'

# Binds
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
