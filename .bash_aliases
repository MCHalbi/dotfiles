# ------------------------------------------------------------------------------
# apt-get
# ------------------------------------------------------------------------------
alias inst='sudo apt-get install'
alias uu='sudo apt-get update && sudo apt-get upgrade'
alias sc='sudo apt-get autoremove'

# ------------------------------------------------------------------------------
# Directory aliases
# ------------------------------------------------------------------------------
alias gorepo='cd /home/halbi/Dokumente/Repos'
alias goodoo='cd /home/halbi/Dokumente/Repos/odoo'
alias goaddons='cd /home/halbi/Dokumente/Repos/odoo-addons-jobrad'
alias gofrontend='cd /home/halbi/Dokumente/Repos/portal-frontend'
alias gobackend='cd /home/halbi/Dokumente/Repos/portal-backend'
alias gocapi='cd /home/halbi/Dokumente/Repos/customer-api'

# ------------------------------------------------------------------------------
# tmate
# ------------------------------------------------------------------------------
alias tmate='tmate -f ~/.tmate.conf'

# ------------------------------------------------------------------------------
# Moving around in bash
# ------------------------------------------------------------------------------
alias ll='ls -l --group-directories-first'
alias la='ls -la --group-directories-first'
alias ld='ls -ld .*'
alias q='exit'

# ------------------------------------------------------------------------------
# Git
# ------------------------------------------------------------------------------
alias gtop='cd `git rev-parse --show-toplevel`'
alias adog='git log --all --decorate --oneline --graph'
alias ga='git add'
alias gau='git add -u'
alias gst='git status'

# ------------------------------------------------------------------------------
# Vim
# ------------------------------------------------------------------------------
alias vim='nvim'

# ------------------------------------------------------------------------------
# Editing specific files
# ------------------------------------------------------------------------------
alias vimrc='vim ~/.config/nvim/init.vim'
alias eda='vim ~/.bash_aliases && source ~/.bash_aliases'
