1. Manual install from official url.

https://cocopon.github.io/iceberg.vim/

2. Open zip file and move download folder.
ex: ~/Downloads/Iceberg.terminal

3. Import iceberg to terminal.

4. Add command and apply(change user name, visualize directory and branch name).

```sh
$ mkdir ~/.zsh
$ cd ~/.zsh
$ curl -o git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

$ vi ~/.zshrc
# Terminal
source ~/.zsh/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
setopt PROMPT_SUBST ; PS1='%F{cyan}Fumis MBA%f %~ %F{red}$(__git_ps1 "(%s)")%f \$ '

$ source ~/.zshrc
```
