function fish_user_key_bindings
  # peco
  bind \cr peco_select_history
  bind \cf peco_change_directory

  # vim like
  bind \cl forward-char

  # ctrl-backspace
  # bind \b backward-kill-bigword
  # ctrl-delete
  # bind \e\[3\;5~ kill-bigword
  # ctrl-alt-d
  # bind \e\cD kill-whole-line 
  # ctrl-d
  # bind \cd 'git diff; commandline -f repaint'
  # ctrl-s
  # bind \cS 'git status; commandline -f repaint'
end
