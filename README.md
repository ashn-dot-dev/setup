System Setup and Configuration
==============================

### Linux (Debian/Ubuntu)

```sh
$ sh setup-apt-packages.sh
$ sh setup-dotfiles.sh
$ sh setup-bin.sh
$ sh setup-go.sh # update release tarball in the script before running
```

### MacOS

Install [Homebrew](https://brew.sh/). You should probably check the install
instructions just to make sure this is still the recommended way to install
Homebrew:

```sh
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Setup system:

```sh
$ sh setup-brew-packages.sh
$ sh setup-dotfiles.sh
$ sh setup-bin.sh
```
