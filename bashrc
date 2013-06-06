# Get the aliases and functions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Load keyboard changes only if x has been started
if [ -n "$DISPLAY" ]; then
    xmodmap $HOME/.Xmodmap
fi

# User specific environment and startup programs
alias rake='bundle exec rake'
alias ll="ls -la"
