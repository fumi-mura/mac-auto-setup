# Mac auto setup

## Overview

Automatically performs initial setup for Mac.

## Step

### 1. Clone Repository

```sh
# If Git settings isn't complete.
$ cd ~ && curl -LO https://github.com/fumi-mura/mac-auto-setup/archive/refs/heads/main.zip && unzip -q main.zip && mv mac-auto-setup-main mac-auto-setup && rm main.zip

# If Git settings is complete.
$ git clone {this_repository}
```

### 2. Execution setup sh

```sh
$ cd ~/mac-auto-setup && sh setup_all.sh
```

### 3. Setup terminal

See terminal/README.md

## Other software list

- Chrome Extensions
  - Authenticator
  - DeepL
  - Keepa
  - Octotree
  - Wappalyzer
