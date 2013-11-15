# Get the aliases and functions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Load keyboard changes only if x has been started
if [ -n "$DISPLAY" ]; then
    xmodmap $HOME/.Xmodmap
fi

# Set $TERM to 256 color
if [ "$TERM" == "xterm" ]; then
    export TERM=xterm-256color
fi

# Custom PS1
export PS1="\[\e[01m\]\[\e[01;32m\]\u@\h\[\e[m\]\[\e[01;34m\] \W \$ \[\e[m\]"

# User specific environment and startup programs
alias rake='bundle exec rake'
alias ll='ls -la'
alias gits='git status'
alias gita='git add .'
alias gitc='git commit -a'
alias gitp='git push'

# Start tmux on load
if [[ ! $TERM =~ screen ]]; then
    exec tmux
fi
