autodark

alias ls='ls -G'
alias grep='grep --color=auto'
alias mutt=neomutt
alias vim=nvim
alias python=python3
alias pip=pip3
alias harlequin='harlequin --theme=$(cat ~/.config/harlequin/theme)'

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

source <(fzf --zsh)
source /opt/homebrew/etc/profile.d/autojump.sh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
