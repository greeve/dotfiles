LC_CTYPE=en_US.UTF-8
export LC_CTYPE
export CLICOLOR=1
export PS1='\u:\W\$ '
export HOMEBREW_NO_EMOJI=1

alias l='ls -lahG'
alias ls='ls -GFp'
alias la='ls -AFG'
alias ll='ls -lFhG'
alias grep='grep --color=auto'
alias ping='ping -c 5'
alias df='df -h'
alias du='du -h -c'
alias r.='fab -f config/deploy/fabfile.py'
alias r.prod='r. prod'
alias r.stg='r. stg'
alias marcedit='/Applications/MarcEdit3.app/Contents/MacOS/MarcEdit3'

EDITOR=vim

export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"

export PYENV_ROOT="${HOME}/.pyenv"
export PATH="${PYENV_ROOT}/bin:$PATH"
eval "$(pyenv init -)"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Development
export VIRTUALENVWRAPPER_PYTHON=$HOME/.local/venvs/virtualenvwrapper/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=$HOME/.local/venvs/virtualenvwrapper/bin/virtualenv
export VIRTUALENVWRAPPER_SCRIPT=$HOME/.local/bin/virtualenvwrapper.sh
source $HOME/.local/bin/virtualenvwrapper_lazy.sh

alias dj="python manage.py"
alias shell="python manage.py shell_plus"
alias server="python manage.py runserver_plus"
alias test="dj test --settings=config.settings.test"

pyclean () {
    find . -type f -name "*.py[co]" -delete
    find . -type d -name "__pycache__" -delete
}

pipclean () {
    pip freeze | xargs pip uninstall -y
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
