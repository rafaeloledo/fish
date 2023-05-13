command -qv pacman && alias upall "sudo pacman -Syu --noconfirm"
command -qv bat && alias cat "bat --style=auto --plain"

alias ccache="sync; echo 3 > /proc/sys/vm/drop_caches"

source ~/scripts/fish/gdrive.fish 2> /dev/null

command -qv wl-copy || echo "No Wayland clipboard"

command -qv ghq && set GHQ_ROOT "$HOME/.ghq/github.com"
