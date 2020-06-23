# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

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

# Antibody
source ~/.config/zsh/antibody_plugins.sh

# Rustup
fpath+=~/.zfunc

# Doom Emacs
export PATH=~/.emacs.d/bin:$PATH

# Aliases
alias ls='ls -l --color=auto'
alias SysUpd='sudo dnf update && rustup update && rustup self update && flatpak update && betterdiscordctl update --flatpak && antibody update'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
