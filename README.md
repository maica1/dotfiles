# dotfiles

---

## Configure

> Init a brand new bare repo

`git init --bare $HOME/dotfiles`

> add to .bash_aliases

```bash
sed -i "1s|^|# dotfiles alias \nalias mdotconfig='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'\n|" $HOME/.bash_aliases &&  source .bashrc
```

mdotconfig config --local status.showUntrackedFiles no

mdotconfig config user.email "mail@mail.com.br"

mdotconfig config user.name "name"

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

## Setting new environment

> Make sure git is installed

```bash
#Clonar repo
git clone --bare  git@github.com:maica1/dotfiles.git $HOME/dotfiles

# Coloca os arquivos no lugar
mdotconfig checkout

[ $? -gt 0 ] && mdotconfig checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{} 
# Double check
mdotconfig checkout

# Set git configs for the repo
mdotconfig config --local status.showUntrackedFiles no
mdotconfig config --local user.name user
mdotconfig config --local user.email "mail@mail.com.br"
mdotconfig remote set-url origin git@github.com:username/your-repository.git
```


TODO: Provision with ansible, creating same user, same programs and recreate the MC-INSTALLKIT @MaVieira
