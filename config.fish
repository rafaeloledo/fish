set fish_greeting ""

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

alias g git
alias ll="exa --icons -la"
alias vim="nvim"
alias ccache="sync; echo 3 > /proc/sys/vm/drop_caches"
alias distro="echo $WSL_DISTRO_NAME"

export PATH="/home/rgnh55/anaconda3/bin:/home/rgnh55/.local/bin:$PATH"

source ~/.config/fish/functions/upgraded_cd.fish


if test $WSL_DISTRO_NAME = "Ubuntu"
  source ~/.asdf/asdf.fish
  alias cat="batcat --style=auto --plain"
  alias brave="brave-browser"
  alias upall="sudo apt update -y && sudo apt upgrade -y"
  alias pgadmin4="/usr/pgadmin4/bin/pgadmin4"
else
  alias upall="sudo pacman -Syu --noconfirm"
  alias cat="bat --style=auto --plain"
  source /opt/asdf-vm/asdf.fish
  export EDITOR=/usr/sbin/nvim
  export PATH="/usr/lib/jvm/default/bin:$PATH"
  export JAVA_HOME="/usr/lib/jvm/default"
  export JDTLS_HOME="/usr/share/java/jdtls"
end

