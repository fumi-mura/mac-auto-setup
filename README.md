# Mac auto setup

## Overview

Automatically performs initial setup for Mac.

## Step

### 1. Clone Repository

```sh
# If Git settings isn't complete.
$ curl -L https://github.com/fumi-mura/mac-auto-setup/archive/refs/heads/main.zip -o ~/mac-auto-setup.zip && unzip -q ~/mac-auto-setup.zip -d ~ && mv ~/mac-auto-setup-main ~/mac-auto-setup && rm ~/mac-auto-setup.zip

# If Git settings is complete.
$ git clone {this_repository}
```

### 2. Pre setup

```sh
$ cd ~/mac-auto-setup && sh 00.pre_setup/setup.sh
```

### 3. Setup all

```sh
$ sh setup_all.sh
```

### 4. Setup terminal

See terminal/README.md

## Other software list

- Chrome Extensions
  - Authenticator
  - DeepL
  - Keepa
  - Octotree
  - Wappalyzer
