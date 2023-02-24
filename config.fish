if status is-interactive
  alias ll="exa --icons -la"
  alias cat="bat --style=auto --plain"
  alias vim="nvim"
  source /opt/asdf-vm/asdf.fish
  export EDITOR=vim
end
