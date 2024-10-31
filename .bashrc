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

is_git_repo() {
	git rev-parse --ise-inside-work-tree &>/dev/null
}

if is_git_repo; then
	PS1='\[\e[0;32;1m\]\u uses \h: \W > \[\e[0m\]'
else
	PS1='\[\e[1;35;1m\]\u uses \h: \W > \[\e[0m\]'
fi

PROMPT_COMMAND='if is_git_repo; then PS1="\[\e[0;32;1m\]\u uses \h: \W \n> \[\e[0m\]"; else PS1="\[\e[1;35;1m\]\u uses \h: \W \n> \[\e[0m\]"; fi'


export EDITOR=vim
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

setfont ter-132n

eval "$(ssh-agent -s)"
#ssh-add ~/.ssh/id_ed25519
