#!/bin/sh

set -eux

brew -v

# Dev Tools
brew install clang-format
brew install cmake
#brew install gdb # XXX: Requires x86_64 architecture
brew install gcc # gcc and g++-{version}
brew install kitty # After set font to 14.0 and then `kitten theme` to Solarized Dark
brew install node # After run `npm install -g browserify` for Browserify

# Utilities
brew install ascii
brew install bash
brew install bash-completion
brew install cloc
brew install cmark
brew install coreutils
brew install discord
brew install firefox
brew install google-chrome
brew install moreutils
brew install obs
brew install python3
brew install runelite
brew install spotify
brew install steam
brew install tree
brew install vim
brew install wget

# Extra
# Adobe Acrobat - required to read uni transcripts
#brew install --cask adobe-acrobat-reader
