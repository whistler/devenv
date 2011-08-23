export TERM=xterm-256color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
alias ls='ls -G'
alias ibslab='ssh root@ibslab.me'
export LSCOLORS=ExFxCxDxBxegedabagacad

# RVM
export CC=/Developer/usr/bin/gcc-4.2
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
export PATH=/Developer/usr/bin/:$PATH

stty stop '' #ctrl+s doesnt stop terminal, allows this shortcut to be used in vim

alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &'
alias mysqlstop='/opt/local/bin/mysqladmin5 -u root -p shutdown'

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

function precmd() {
  PROMPT="%n@%m %~$(parse_git_branch)%# "
}

function proml {
    local        BLUE="\[\033[0;34m\]"
    local         RED="\[\033[0;31m\]"
    local   LIGHT_RED="\[\033[1;31m\]"
    local       GREEN="\[\033[0;32m\]"
    local LIGHT_GREEN="\[\033[1;32m\]"
    local       WHITE="\[\033[0;37m\]"
    local  LIGHT_GRAY="\[\033[0;37m\]"
    case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
    esac
PS1="${TITLEBAR}\
$GREEN\w$BLUE\$(parse_git_branch)\
$WHITE: "
PS2='> '
PS4='+ '
}
proml

alias bashme='vi ~/.bash_profile'
alias bashon='. ~/.bash_profile'
alias gst='git status'
alias co='git checkout'
alias ga='git add'
alias gaa='git add .'
alias gr='git rebase'
alias gpr='git pull --rebase'
alias gp='git pull'
alias gh='git push'
alias gd='git diff | vim'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias sc='rails server'
alias scs='rails console'
alias rd='rake db:auto:migrate'
alias mys='mysql -u root'
alias rr='rake routes'
alias ggco='git rebase --continue'
alias ggcs='git rebase --skip'
alias ggca='git rebase --abort'
alias sshkey='cat ~/.ssh/id_rsa.pub | pbcopy'
alias gsl='git stash list'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsc='git stash clear'
alias gbl='git branch list'
alias cpd='cap production deploy'
alias cpdd='cap production deploy:do_stuff'
alias cpa='cap production deploy:auto_migrate'
alias csd='cap staging deploy'
alias csdd='cap staging deploy:do_stuff'
alias csa='cap staging deploy:auto_migrate'
alias gpath='ruby -r rubygems -e "p Gem.path"'
alias cc='./script/runner "Rails.cache.clear"'
alias zz='tar xzvf'
alias si='cd ~/Sites'
alias de='cd ~/Desktop'
alias dw='cd ~/Downloads'
alias dp='cd ~/Dump'
alias bi='bundle install'
alias ns='cd ~/workspace/notesolution'
alias go='cd ~/workspace/gameon'
alias ws='cd ~/workspace'
alias vimrc='vim ~/.vimrc'
