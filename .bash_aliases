#greps
alias h='history'
alias ht='history | tail'
alias hg='history|grep'
#lls
alias ll='ls -lhA'
alias lt='ls -lhtA'
alias lr='ls -tRFh'
#edit zshrc
alias zshrc='${=EDITOR} ~/.zshrc'
#arquivos
alias duf='du -kchs *'
alias ff='find . -type f -name'
alias fd='find . -type d -name'


#GLOBAL 
alias H='|head'
alias T='|tail'
alias L='|less +F'

#MANAGE DOTFILES
alias mdotconfig='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

#vpn
alias nmup='nmcli connection up'
alias nmdown='nmcli connection down'
