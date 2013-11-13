# Get the aliases and functions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Custom PS1
export PS1="\[\e[01m\]\[\e[01;32m\]\u@\h\[\e[m\]\[\e[01;34m\] \W \$ \[\e[m\]"

# User specific environment and startup programs
alias rake='bundle exec rake'
alias ll="ls -la"
