function fish_user_key_bindings
  # ctrl-backspace
  bind \b backward-kill-bigword
  # ctrl-delete
  bind \e\[3\;5~ kill-bigword
  # ctrl-alt-d
  bind \e\cD kill-whole-line 
  # ctrl-d
  bind \cd 'git diff; commandline -f repaint'
  # ctrl-s
  bind \cS 'git status; commandline -f repaint'
end
