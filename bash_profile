export CLICOLOR=1
alias l='ls -lahG'
alias ls='ls -GFp'
alias la='ls -AFG'
alias ll='ls -lFhG'
alias grep='grep --color=auto'
alias ping='ping -c 5'
alias df='df -h'
alias du='du -h -c'

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Development
source /usr/local/bin/virtualenvwrapper.sh

EDITOR=vim

alias dj="python manage.py"
alias shell="python manage.py shell_plus"
alias server="python manage.py runserver_plus"

alias c="python /Users/greeve/Documents/python/temperature.py c"
alias f="python /Users/greeve/Documents/python/temperature.py f"
