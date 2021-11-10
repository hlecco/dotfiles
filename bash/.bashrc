#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias mutt=neomutt
alias o='handlr open'
alias cat='bat -pp --theme="Solarized (light)"'
alias bt=bluetoothctl
alias myip='curl -s https://ipinfo.io/ip'
alias vim=nvim

PS1='\[\033[0;36m\][\u@\h \W] \$\[\033[0m\] '

[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh

[[ $- == *i* ]] && . /usr/share/blesh/ble.sh

complete -C /usr/bin/terraform terraform
