# General Configurations
set fish_greeting
set -gx EDITOR nvim
set -g fish_vi_keybindings

# ~/.config/fish/config.fish
starship init fish | source

# Defining Paths
set PATH $HOME/.cargo/bin $PATH

# Aliases
alias ls='exa -l'
alias SysUpd='yay -Syu && flatpak update && rustup update && antibody update'
