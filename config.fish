set fish_greeting ""

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# my env variables - uncomment depending on the current distro
# set -Ux DISTRO UBUNTU
set -Ux DISTRO ARCH

alias g git
alias ll="exa --icons -laF"
alias vim="nvim"
alias ccache="sync; echo 3 > /proc/sys/vm/drop_caches"
alias distro="echo DISTRO"
alias cls="clear"

export PATH="/home/rgnh55/anaconda3/bin:/home/rgnh55/.local/bin:$PATH"
export PATH="/usr/pgadmin4/bin:$PATH"

source ~/.config/fish/functions/upgraded_cd.fish
source ~/scripts/fish/gdrive.fish 2> /dev/null

if test $DISTRO = "UBUNTU"
  source ~/.asdf/asdf.fish 2> /dev/null
  alias cat="batcat --style=auto --plain"
  alias upall="sudo apt update -y && sudo apt upgrade -y"
else if test $DISTRO = "ARCH"
  alias upall="sudo pacman -Syu --noconfirm"
  alias cat="bat --style=auto --plain"
  source /opt/asdf-vm/asdf.fish 2> /dev/null
  export EDITOR=/usr/sbin/nvim
  export PATH="/usr/lib/jvm/default/bin:$PATH"
  export JAVA_HOME="/usr/lib/jvm/default"
  export JDTLS_HOME="/usr/share/java/jdtls"
end
