# Get the aliases and functions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment and startup programs
alias rake='bundle exec rake'
alias ll="ls -la"
alias rs="rails server"
