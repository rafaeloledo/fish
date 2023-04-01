set fish_greeting ""

if status is-interactive
  alias ll="exa --icons -la"
  alias cat="bat --style=auto --plain"
  alias vim="nvim"
  alias ccache="sync; echo 3 > /proc/sys/vm/drop_caches"
  export PATH="/home/rgnh55/anaconda3/bin:/home/rgnh55/.local/bin:$PATH"
end

if test $WSL_DISTRO_NAME = "Ubuntu"
  source ~/.asdf/asdf.fish
else
  source /opt/asdf-vm/asdf.fish
  export EDITOR=/usr/sbin/nvim
  export PATH="/usr/lib/jvm/default/bin:$PATH"
  export JAVA_HOME="/usr/lib/jvm/default"
  export JDTLS_HOME="/usr/share/java/jdtls"
end

