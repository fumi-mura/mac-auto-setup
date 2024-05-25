## Overview

this is my Mac settings.

## Step

### 1. Install homebrew

install from [here](https://brew.sh/)

### 2. Install git

```sh
$ brew install git
```

### 3. Through path

```sh
$ cd ~
$ touch .zshrc
$ echo "export PATH=/usr/local/bin/git:\$PATH" >> ~/.zshrc
$ source ~/.zshrc
```

### 4. Setting git

See /git/README.md

### 5. Clone this repository

```sh
$ git clone "xxx"
```

### 6. Run setup script

```sh
$ sh my_mac_settings/setup_all.sh
```

## Using software list

- Application
  - VS Code -->
  - Postman
  - Google Chrome
  - Slack
  - Alfred
  - Clipy
  - Magnet
  - Spark
- Development tools
  - Homebrew -->
  - Git
  - AWS CLI v2
  - Docker for Mac
  - tfenv
- Chrome Extensions
  - Octotree
  - Keepa
- Requires manual installation
  - Magnet
  - Spark
