# Install a package from the packet source
alias dload='sudo apt-get install'

# ------------------------------------------------------------------------------
# Directory aliases
# ------------------------------------------------------------------------------
alias stm='cd ~/Semester'
alias gopylib='cd /home/halbi/.local/lib/python3.5/site-packages/halbi'
alias gopy='cd ~/Dokumente/Coding-Spielwiese/Python/'
alias gopollux='cd ~/Dokumente/twaeng/pollux/'
alias gotwaeng='cd ~/Dokumente/twaeng/'

# ------------------------------------------------------------------------------
# Show the content of the current folder as list
# ------------------------------------------------------------------------------
alias ll='ls -l'
alias la='ls -la'

# -----------------------------------------------------------------------------
# Python
# -----------------------------------------------------------------------------
alias python='python3' # Use always Python 3 by default
alias pip='pip3'
alias manage='python manage.py' # Use manage.py inside a django project

# ------------------------------------------------------------------------------
# Git
# ------------------------------------------------------------------------------
alias gtop='cd `git rev-parse --show-toplevel`'
alias adog='git log --all --decorate --oneline --graph'

# ------------------------------------------------------------------------------
# Vim
# ------------------------------------------------------------------------------
alias vim='nvim'
alias vimrc='vim ~/.config/nvim/init.vim'
alias vimalias='vim ~/.bash_aliases && source ~/.bash_aliases'

# -----------------------------------------------------------------------------
# Backup data to scott
# -----------------------------------------------------------------------------
alias bdocs='test -e /var/lock/unison-scott_documents && exit 0 || (touch /var/lock/unison-scott_documents;unison scott_documents; rm /var/lock/unison-scott_documents)'

# ------------------------------------------------------------------------------
# Temporary aliases
# ------------------------------------------------------------------------------
alias planner='~/Dokumente/Studium/master/07_WS2020/MasterProjekt/planner/planner'
