# Setting aws cofigure
## single git account
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

## multi git accounts
```sh
$ ssh-keygen -t rsa -C {your_email@address.com} -f {key name}

$ vi ~/.ssh/config
# accountA github key
Host github.com.a
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_rsa_a
  Port 22
  TCPKeepAlive yes
  IdentitiesOnly yes

# accountB github key
Host github.com.b
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_rsa_b
  Port 22
  TCPKeepAlive yes
  IdentitiesOnly yes
```

### example of multi account command usage
<!-- use accountA key-->
```sh
$ git@github.com.a:Fumi-Mura/my_mac_settings.git
```

```sh
$ git config --global user.name 'your name'
$ git config --global user.email 'your email'
```

```sh
$ cd ~/{target directory}
$ git config --local user.name 'your individual name'
$ git config --local user.email 'your individual email'
```
