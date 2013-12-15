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

# Ubuntu bashrc: enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  #alias dir='dir --color=auto'
  #alias vdir='vdir --color=auto'

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# User specific environment and startup programs
alias rake='bundle exec rake'
alias ll='ls -la'
alias gits='git status'
alias gita='git add .'
alias gitc='git commit -a'
alias gitp='git push'
alias gitpl='git pull'
alias rm='rm -I'

# Start tmux on load
if [[ ! $TERM =~ screen ]]; then
  # Checks if default session exists
  tmux has-session -t terminal &> /dev/null

  if [ $? == 0 ]; then
    exec tmux a -t terminal
  else
    exec tmux new -s terminal
  fi
fi

# Include RVM script
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
