# Mac auto setup

## Overview

Automatically performs initial setup for Mac.

## Step

### 1. Install homebrew

Install from [here](https://brew.sh/).

Check shell, Through path, Confirmation install.

```sh
$ $SHELL

$ (Follow brew instruction commands.)

$ brew -v
```

### 2. Install git

```sh
$ brew install git
```

### 3. Through path

```sh
$ vi ~/.zshrc
# Git
export PATH=/usr/local/bin/git:\$PATH

$ source ~/.zshrc
```

### 4. Setting git

See git/README.md

### 5. Clone this repository

```sh
$ git clone {this_repository}
```

### 6. Run setup script

```sh
$ cd mac-auto-setup
$ sh setup_all.sh
```

### 7. Setup terminal

See terminal/README.md

## Other software list

- Chrome Extensions
  - Authenticator
  - DeepL
  - Keepa
  - Octotree
  - Wappalyzer
