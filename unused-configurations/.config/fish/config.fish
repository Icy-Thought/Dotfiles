# General Configruations
set fish_greeting                           # Empty greeting message
set EDITOR "nvim"
set PATH $HOME/.cargo/bin $PATH
starship init fish | source

# Aliases
alias ls="ls -l --color=auto"
alias SysUpd="sudo dnf update && rustup update && rustup self update && flatpak update && betterdiscordctl update --flatpak"
