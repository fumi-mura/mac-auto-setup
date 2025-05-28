## Overview

This is my Mac settings.

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
$ cd my_mac_settings
$ sh setup_all.sh
```

### 7. Setup terminal

See /terminal/README.md

## Other software list

- Manual installation
  - Compressor
  - FinalCutPro
  - Gestimer 2
  - LogicPro
  - Magnet
  - MainStage
  - Motion
  - PhotoRetouch
  - RunCat
- Chrome Extensions
  - Keepa
  - Octotree
