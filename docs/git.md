# Setting git cofigure

## Single git account

```sh
$ ssh-keygen -t rsa -C {your_email@address.com}
```

```sh
$ vi ~/.ssh/config
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_rsa
  Port 22
  TCPKeepAlive yes
  IdentitiesOnly yes
```

## Multi git accounts

```sh
$ ssh-keygen -t rsa -C {your_email@address.com} -f {key name}

$ vi ~/.ssh/config
# Account A github key
Host github.com.a
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_rsa_a
  Port 22
  TCPKeepAlive yes
  IdentitiesOnly yes

# Account B github key
Host github.com.b
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_rsa_b
  Port 22
  TCPKeepAlive yes
  IdentitiesOnly yes
```

## Example of multi account command usage

<!-- Use account A key -->
```sh
$ git config --global user.name 'your name'
$ git config --global user.email 'your email'
```

<!-- Use account B key -->
```sh
$ cd ~/{target directory}
$ git config --local user.name 'your individual name'
$ git config --local user.email 'your individual email'
```

```sh
# Push local dir.
$ git init
$ git add -A
$ git commit -m 'first commit'
$ git remote add origin git@github.com.{a or b}:{username}/{repository}.git
$ git branch -M main
$ git push -u origin main

# or clone
$ git clone git@github.com.{a or b}:{username}/{repository}.git
```
