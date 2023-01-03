# ------------------------------------------------------------------------------
# apt-get
# ------------------------------------------------------------------------------
alias inst='sudo apt-get install'
alias uu='sudo apt-get update && sudo apt-get upgrade'
alias sc='sudo apt-get autoremove'

# ------------------------------------------------------------------------------
# Directory aliases
# ------------------------------------------------------------------------------
alias stm='cd ~/Semester'
alias gopylib='cd /home/halbi/.local/lib/python3.5/site-packages/halbi'
alias gopy='cd ~/Dokumente/Coding-Spielwiese/Python/'
alias gopollux='cd ~/Dokumente/twaeng/pollux/'
alias gotwaeng='cd ~/Dokumente/twaeng/'
alias goconf='cd ~/.config/'
alias gomaster='cd ~/Dokumente/Studium/master/master_thesis'

# ------------------------------------------------------------------------------
# tmate
# ------------------------------------------------------------------------------
alias tmate='tmate -f ~/.tmate.conf'

# ------------------------------------------------------------------------------
# Moving around in bash
# ------------------------------------------------------------------------------
alias ll='ls -l'
alias la='ls -la'
alias ld='ls -ld .*'
alias q='exit'

# -----------------------------------------------------------------------------
# Python
# -----------------------------------------------------------------------------
alias python='python3' # Always use Python 3 by default
alias pip='pip3' # Always uses pip3 by default
alias manage='python manage.py' # Use manage.py inside a django project

# ------------------------------------------------------------------------------
# Git
# ------------------------------------------------------------------------------
alias gtop='cd `git rev-parse --show-toplevel`'
alias adog='git log --all --decorate --oneline --graph'
alias ga='git add'
alias gau='git add -u'
alias gst='git status'

# ------------------------------------------------------------------------------
# YADM
# ------------------------------------------------------------------------------
alias yl='yadm list'
alias ya='yadm add'
alias yau='yadm add -u'

# ------------------------------------------------------------------------------
# Vim
# ------------------------------------------------------------------------------
alias vim='nvim'

# ------------------------------------------------------------------------------
# Editing specific files
# ------------------------------------------------------------------------------
alias vimrc='vim ~/.config/nvim/init.vim'
alias eda='vim ~/.bash_aliases && source ~/.bash_aliases'

# -----------------------------------------------------------------------------
# Backup data to scott
# -----------------------------------------------------------------------------
alias bdocs='test -e /var/lock/unison-home && exit 0 || (touch /var/lock/unison-home;unison home; rm /var/lock/unison-home)'

# ------------------------------------------------------------------------------
# GTD
# ------------------------------------------------------------------------------
alias daily='cd ~/Dokumente/GTD && vim -S Daily.vim'
