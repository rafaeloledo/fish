function fish_user_key_bindings
  # peco
  bind \cr peco_select_history 
  bind \cf peco_change_directory 
  # vim like
  bind \el forward-char

  bind \cd delete-char
  bind \cl 'clear; commandline -f repaint'
  # ctrl-backspace
  bind \b backward-kill-word
  # ctrl-delete
  bind \e\[3\;5~ kill-word
end
