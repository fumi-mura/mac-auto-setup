```sh
$ vi ~/.zshrc
# Node
export PATH=$HOME/.nodebrew/current/bin:$PATH

$ nodebrew setup
$ nodebrew ls-remote
$ nodebrew install stable <!-- or nodebrew install v18.15.0 or $ nodebrew install latest -->
$ nodebrew use v{version}
$ nodebrew ls

# start project
$ npx create-next-app@latest
```
