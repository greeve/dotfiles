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

EDITOR=vim

export PATH="/usr/local/bin:$PATH"
export PYENV_ROOT="${HOME}/.pyenv"
export PATH="${PYENV_ROOT}/bin:$PATH"
eval "$(pyenv init -)"

# if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Development
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
pyenv virtualenvwrapper_lazy

export PATH="/usr/local/mysql/bin:$PATH"

pyclean () {
    find . -type f -name "*.py[co]" -delete
    find . -type d -name "__pycache__" -delete
}
