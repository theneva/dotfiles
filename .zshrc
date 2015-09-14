# Path to your oh-my-zsh configuration.
ZSH=/Users/theneva/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git scd)

source $ZSH/oh-my-zsh.sh

# User configuration

# Everything to do with local paths goes in here
source ./.paths.sh

# brew install thefuck for this piece of awesomeness
alias fuck='$(thefuck $(fc -ln -1))'
alias FUCK='fuck'
alias faen='fuck'
alias FAEN='fuck'

alias gdc='git diff --cached'
alias mct="mvn clean test"

# Enable vi mode on the command line
bindkey -v

# Restore common bindings
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

# Display "[NORMAL]" on the right side of the prompt when in normal mode
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1

# Allow Ctrl+s (so I can save files in VIM without :w shenanigans)
stty -ixon -ixoff

echo 'Hello!'

