set fish_greeting ""

# options
set fish_user_automatic_suggestion_verbose 1

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# my env variables
set -gx EDITOR nvim
set -gx XDG_CONFIG_HOME $HOME/.config

# aliases
alias g git
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias llt "ll --tree"
alias cls="clear"
alias mscr="cd ~/.local/scripts"

if type -q exa
  alias ll "exa -lg --icons"
  alias lla "ll -a"
end

command -qv nvim && alias vim nvim

# exporting PATHs
set -gx PATH bin $PATH 2> /dev/null
set -gx PATH ~/bin $PATH 2> /dev/null
set -gx PATH ~/.local/bin $PATH 2> /dev/null
set -gx PATH /usr/local/bin $PATH 2> /dev/null
set -gx PATH ~/.config/emacs/bin $PATH 2> /dev/null
set -gx PATH ~/.local/scripts $PATH 2> /dev/null

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end

# theme
fish_config theme choose "Rosé Pine" > /dev/null 2> /dev/null
