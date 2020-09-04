# Welcome Message
set fish_greeting

# ~/.config/fish/config.fish
starship init fish | source

# Defining Paths
set PATH $HOME/.cargo/bin $PATH

# Aliases
alias ls='exa -l'
alias SysUpd='trizen -Syu && flatpak update && rustup update && antibody update'
alias wup='wg-quick up integrity_vpn'
alias wud='wg-quick down integrity_vpn'
