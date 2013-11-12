# Get the aliases and functions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Custom PS1
## Define user color, red to root, green to user
if [[ ${EUID} == 0 ]] ; then
  COLOR_USER="\[\e[01;31m\]"
else
  COLOR_USER="\[\e[01;32m\]"
fi
export PS1="${COLOR_USER}\u@\h\[\e[0m\]\[\e[00;37m\]\[\033[01;34m\] \W \$ \[\033[00m\]"

# User specific environment and startup programs
alias rake='bundle exec rake'
alias ll="ls -la"
