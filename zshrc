# ~/.zshrc

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

alias ls='ls --color=auto'
alias lsla='ls -la'

autoload -U promptinit
promptinit
prompt redhat
RPROMPT=' %~'

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2 eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

HISTFILE=~/.zsh_history
SAVEHIST=50000
HISTSIZE=50000

bindkey '\e[H' beginning-of-line # Home
bindkey '\e[F' end-of-line # End
bindkey '\e[3~' delete-char # Del
bindkey '\e[2~' overwrite-mode # Insert
bindkey "^[[5C" forward-word # ctrl cursor right
bindkey "^[[5D" backward-word # ctrl cursor left
bindkey "^[[1;5C" forward-word # ctrl cursor right
bindkey "^[[1;5D" backward-word # ctrl cursor left
bindkey '\e[A' history-beginning-search-backward # cursor up
bindkey '\e[B' history-beginning-search-forward # cursor down

#export TERM="xterm-256color"
