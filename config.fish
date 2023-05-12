set fish_greeting ""

# theme
# set -g theme_color_scheme terminal-dark
# set -g fish_prompt_pwd_dir_length 1
# set -g theme_display_user yes
# set -g theme_hide_hostname no
# set -g theme_hostname always

# my env variables - uncomment depending on the current distro
# set -Ux DISTRO UBUNTU
set -Ux DISTRO ARCH
set -gx TMUX_CONFIG "$HOME/.config/tmux/tmux.conf"
set -gx EDITOR nvim

# aliases
alias g git
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

command -qv nvim && alias vim nvim

command -qv bat && alias cat "bat --style=auto --plain"
command -qv batcat && alias cat "batcat --style=auto --plain"

command -qv apt && alias upall "sudo apt update -y && sudo apt upgrade -y"
command -qv pacman && alias upall "sudo pacman -Syu --noconfirm"

alias ccache="sync; echo 3 > /proc/sys/vm/drop_caches"
alias distro="echo DISTRO"
alias cls="clear"

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx ~/.local/bin $PATH

source ~/.config/fish/functions/upgraded_cd.fish
source ~/scripts/fish/gdrive.fish 2> /dev/null

if test $DISTRO = "UBUNTU"
  source ~/.asdf/asdf.fish 2> /dev/null
else if test $DISTRO = "ARCH"
  source /opt/asdf-vm/asdf.fish 2> /dev/null
  export PATH="/usr/lib/jvm/default/bin:$PATH"
  export JAVA_HOME="/usr/lib/jvm/default"
  export JDTLS_HOME="/usr/share/java/jdtls"
end
