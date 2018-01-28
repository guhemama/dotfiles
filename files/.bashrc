# Get the aliases and functions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Set $TERM to 256 color
if [ "$TERM" == "xterm" ]; then
  export TERM=xterm-256color
fi

# Custom PS1
export PS1="\[\e[01m\]\[\e[01;30m\]\u@\h\[\e[m\]\[\e[01;34m\] \W \$ \[\e[m\]"

# Ubuntu bashrc: enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# Don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it
shopt -s histappend

# Navigate without cd
shopt -s autocd

# Avoid accidental overwriting
set -o noclobber

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# User specific environment and startup programs
alias rake='bundle exec rake'
alias ll='ls -la'
alias mkdir='mkdir -p'
alias gits='git status'
alias gita='git add .'
alias gitc='git commit -a'
alias gitp='git push'
alias gitpl='git pull'
alias rm='rm -I'
alias unixtime='date +%s'

# PHP aliases
alias phps='php -S localhost:8000'

# Start tmux on load if tmux exists and the session is interactive
if command -v tmux>/dev/null; then
  [[ $- == *i* ]] && [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

if [ -f ~/.Xmodmap ]; then
  xmodmap ~/.Xmodmap
fi

# Include RVM script
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add our local bin to path
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi
