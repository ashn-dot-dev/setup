#!/bin/sh

set -eux

brew -v

brew tap tinygo-org/tools # tinygo

# Dev Tools
brew install black
brew install clang-format
brew install cmake
brew install git-filter-repo
brew install go
brew install kitty # After set font to 14.0 and then `kitten theme` to Solarized Dark
brew install mypy
brew install tinygo

# Utilities
brew install ascii
brew install bash
brew install bash-completion
brew install cloc
brew install cmark
brew install coreutils
brew install discord
brew install exiftool
brew install ffmpeg
brew install firefox
brew install google-chrome
brew install moreutils
brew install obs
brew install python3
brew install runelite
brew install shellcheck
brew install spotify
brew install steam
brew install tree
brew install vim
brew install wget

# Extra

# Adobe Acrobat - required to read uni transcripts
#brew install --cask adobe-acrobat-reader

brew install --cask audacity

# Better Display used for getting a 16:9 ratio for screenshots at work.
# Normally, macOS uses a 16:10 ratio, but we want display captures to be
# normalized to a 16:9 ratio.
#
# https://github.com/waydabber/BetterDisplay?tab=readme-ov-file#homebrew
#
# Under macOS system settings, the 1600x1000 resolution is the default that I
# use as a daily driver. I use 1600x900 for recording / screenshots, which can
# be set by going to the settings -> built-in display -> enable custom scaling
# (checked) -> add custom 1600x900 display.
#
# I favorite 1600x1000 as #1 and 1600x900 as favorite #2.
#
# Instructions were adapted from this YouTube video:
# https://www.youtube.com/watch?v=tPOwzTww_Xo
brew install --cask betterdisplay
