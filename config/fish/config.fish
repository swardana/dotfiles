set fish_greeting ""

set --global --export TERM xterm-256color
set --global --export EDITOR nvim

# MacPorts `bin` directory.
fish_add_path --global /opt/local/bin

source (dirname (status --current-filename))/aliases.fish
