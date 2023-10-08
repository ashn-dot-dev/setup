#!/bin/sh

set -eux

brew -v

# Dev Tools
brew install clang-format
#brew install gdb # XXX: Requires x86_64 architecture
brew install gcc # gcc and g++-{version}
brew install kitty # After set font to 14.0 and then `kitten theme` to Solarized Dark

# Utilities
brew install ascii
brew install bash
brew install cloc
brew install cmark
brew install discord
brew install firefox
brew install google-chrome
brew install moreutils
brew install python3
brew install steam
brew install vim
brew install tree
brew install wget
