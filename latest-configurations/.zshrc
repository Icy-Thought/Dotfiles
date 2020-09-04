# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gilgamesh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Color xterm
[ -z "$TMUX" ] && export TERM=xterm-256color

# Smarter history
setopt hist_ignore_all_dups                                 # remove older duplicate entries
setopt hist_reduce_blanks                                   # remove superfluous blanks
setopt inc_append_history                                   # save history entries ASAP
setopt share_history                                        # share history between different instances

# General settings
export EDITOR=nvim                                          # Default editor

# ZSH AUTOSUGGESTION
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_USE_ASYNC=true

# Improve completation menu
setopt auto_list                                            # automatically list choices on ambiguous completion
setopt auto_menu                                            # automatically use menu completion
setopt always_to_end                                        # move cursor to end if word had one match

# Enables interactive completations
zstyle ':completion:*' menu select                          # select completions with arrow keys
zstyle ':completion:*' group-name ''                        # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion

# History
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search                  # Up
bindkey "^[[B" down-line-or-beginning-search                # Down

# Antibody and Sourcing
source ~/.config/zsh/antibody_plugins.sh
export PATH="$HOME/.cargo/bin:$PATH"

# Aliases
alias ls='exa -l'
alias SysUpd='yay -Syu && flatpak update && rustup update && antibody update'

# Starship
eval "$(starship init zsh)"
