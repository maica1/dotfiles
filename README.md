# dotfiles

---

## TODO

* Remove sensitive data with includes
* Set repo public

## Configure

> Init a brand new bare repo

`git init --bare $HOME/dotfiles`

> add to .bash_aliases

```bash
sed -i "1s|^|# dotfiles alias \nalias mdotconfig='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'\n|" $HOME/.bash_aliases &&  source .bashrc
```

mdotconfig config --local status.showUntrackedFiles no
mdotconfig config user.email "maicon.vieira@outlook.com.br"
mdotconfig config user.name "Maicon Vieira"
mdotconfig remote add origin git@github.com:maica1/dotfiles.git
mdotconfig remote -v

### Basic usage example

---

> Add changed files to stage

mdotconfig add /path/to/file

> Add staged files to HEAD, commiting

mdotconfig commit -m "A short message" /path/to/file

> Send local Head to main repository

mdotconfig push origin main
