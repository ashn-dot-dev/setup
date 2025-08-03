#!/bin/sh
if [ $(uname -s) = "Darwin" ]; then
    brew install --cask dotnet-sdk@8 # .NET 8
    brew install --cask visual-studio-code
    code --install-extension=ms-dotnettools.csdevkit # https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.csdevkit
else
     2>&1 echo "error: Unsupported platform"
     exit 1
fi
