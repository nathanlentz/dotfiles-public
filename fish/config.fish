set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user no
set -g theme_hide_hostname no
set -g theme_hostname always


# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
alias gclean "git branch | grep -v main | xargs git branch -D"
alias nv "nvim ."
alias lg "lazygit "
command -qv nvim && alias vim nvim

# dotnet3 
alias dotnet3 /usr/local/share/dotnet/x64/dotnet

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH ~/.cargo/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

switch (uname)
    case Darwin
        source (dirname (status --current-filename))/config-osx.fish
    case Linux
        source (dirname (status --current-filename))/config-linux.fish
    case '*'
        source (dirname (status --current-filename))/config-windows.fish
end


# Volta
set -g VOLTA_HOME $HOME/.volta
set -gx PATH $VOLTA_HOME/bin $PATH

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
    source $LOCAL_CONFIG
end


if status is-interactive
    # Commands to run in interactive sessions can go here
    and not set -q TMUX
    exec tmux
end


# pnpm
set -gx PNPM_HOME /Users/nlentz/Library/pnpm
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
[ -f ~/.inshellisense/key-bindings.fish ] && source ~/.inshellisense/key-bindings.fish

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH


# function fish_prompt
#     set_color $fish_color_cwd
#     echo -n (prompt_pwd_icon) (prompt_pwd) ' '
#
#     # Add other prompt components as needed
#
#     set_color normal
# end
#
# function prompt_pwd_icon
#     echo -n "🔥"
# end
