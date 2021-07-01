# dotfiles
***

##TODO: 
* Remove sensitive data with includes
* Remove often-changing files
* Set repo public

git init --bare $HOME/dotfiles
#add to .bash_aliases
alias mdotconfig='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

source .bashrc

mdotconfig config --local status.showUntrackedFiles no
mdotconfig config user.email "maicon.vieira@outlook.com.br"
mdotconfig config user.name "Maicon Vieira"
mdotconfig remote add origin git@github.com:maica1/dotfiles.git
mdotconfig remote -v


### Basic usage example:
***

mdotconfig add /path/to/file

mdotconfig commit -m "A short message"

mdotconfig push origin master
