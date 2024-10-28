#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias bashconfig='vim ~/.bashrc'
alias bashsource='source ~/.bashrc'
alias ls='ls -a --color=auto'
alias grep='grep --color=auto'
alias ..='cd ..'

PS1='\[\e[1;35;1m\]\u uses \h: \W > \[\e[0m\]'

export EDITOR=vim

setfont ter-132n

eval "$(ssh-agent -s)"
#ssh-add ~/.ssh/id_ed25519