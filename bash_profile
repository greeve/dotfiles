export CLICOLOR=1
alias l='ls -lahG'
alias ls='ls -GFp'
alias la='ls -AFG'
alias ll='ls -lFhG'
alias grep='grep --color=auto'
alias ping='ping -c 5'
alias df='df -h'
alias du='du -h -c'

export HOMEBREW_NO_EMOJI=1

export PATH="/usr/local/bin:$PATH"
export PYENV_ROOT="${HOME}/.pyenv"
export PATH="${PYENV_ROOT}/bin:$PATH"
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
eval "$(pyenv init -)"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Development
source /usr/local/bin/virtualenvwrapper.sh
# export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
pyenv virtualenvwrapper_lazy

export PATH="/usr/local/mysql/bin:$PATH"

EDITOR=vim

alias dj="python manage.py"
alias shell="python manage.py shell_plus"
alias server="python manage.py runserver_plus"

alias c="python /Users/greeve/Documents/python/temperature.py c"
alias f="python /Users/greeve/Documents/python/temperature.py f"

pyclean () {
    find . -type f -name "*.py[co]" -delete
    find . -type d -name "__pycache__" -delete
}
