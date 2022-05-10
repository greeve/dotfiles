# set -x

LC_CTYPE=en_US.UTF-8
export LC_CTYPE
export CLICOLOR=1
export PS1='%n:%F{003}%1~%f %# '
# bash prompt
# export PS1='\u:\W\ $ '
export HOMEBREW_NO_EMOJI=1

alias l='ls -lahG'
alias ls='ls -GFp'
alias la='ls -AFG'
alias ll='ls -lFhG'
alias lt='ls -lahGt'
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
export PATH="/usr/local/mysql/bin:$PATH"

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Development

export NVM_LAZY_LOAD=true

# Load antigen
source /usr/local/share/antigen/antigen.zsh

antigen bundle lukechilds/zsh-nvm

# Tell antigen its over
antigen apply


eval "$(pyenv init --path)"
eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
pyenv virtualenvwrapper_lazy

alias dj="python manage.py"
alias shell="python manage.py shell_plus"
alias server="python manage.py runserver_plus"
alias test="dj test --settings=config.settings.test"
alias activate='source env/bin/activate'
alias venv='python -m venv env --prompt'

alias html_template="python /Users/greeve/.local/scripts/html_template.py"
alias move_files="python /Users/greeve/.local/scripts/move_files.py"

alias weather="curl https://wttr.in"

alias byuldap='ldapsearch -LLL -x -h ldap.byu.edu -D "uid=Lis admin,ou=processes,o=byu.edu" -w in2synch -b ou=people,o=byu.edu'

dsclean () {
    find . -type f -name ".DS_Store" -delete
}

pyclean () {
    find . -type f -name "*.py[co]" -delete
    find . -type d -name "__pycache__" -delete
}

pipclean () {
    pip freeze | xargs pip uninstall -y
}

marc () {
    echo "Usage: marc catkey"
    http https://app.lib.byu.edu/marcrecord/bib/$1
}

titlecase () {
    echo "Usage: titlecase <string-to-titlecase>"
    python -c "print('$1'.title().strip())"
}

headphones () {
    sudo pkill coreaudiod
}

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export JAVA_HOME=`/usr/libexec/java_home`

# set +x
