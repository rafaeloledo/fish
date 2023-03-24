if status is-interactive
  alias ll="exa --icons -la"
  alias cat="bat --style=auto --plain"
  alias vim="nvim"
  source /opt/asdf-vm/asdf.fish
  export EDITOR=/usr/sbin/nvim
  alias ccache="sync; echo 3 > /proc/sys/vm/drop_caches"
  export PATH="/home/rgnh55/anaconda3/bin:/home/rgnh55/.local/bin:$PATH"
  source ~/.asdf/asdf.fish
end
