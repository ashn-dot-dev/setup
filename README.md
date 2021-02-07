System Setup and Configuration
==============================

## Ubuntu MATE 18.04
### Setup Environment
```sh
$ ./setup-apt-packages.sh
$ ./setup-bin.sh
$ ./setup-dotfiles.sh
```

### Update Mouse and Trackpad Settings
+ Goto Menu -> Mouse -> Touchpad
  + Uncheck 'Enable mouse clicks with touchpad'
  + Set 'Two-finger click emulation:' to 'Right button'
  + Check 'Enable natural scrolling'

### Update Terminal Settings
+ Open mate-terminal
+ Goto Edit -> Profile Preferences -> General
  + Uncheck 'Terminal bell'
  + Uncheck 'Show menubar by default in new terminals'
  + Set font to 'Ubuntu Mono Regular' size 16
+ Goto Edit -> Profile Preferences -> Scrolling
  + Set 'Scrollbar is:' to 'Disabled'
  + Set 'Scrollback:' to 'Unlimited' by checking the 'Unlimited' box
+ Goto Edit -> Keyboard Shortcuts and disable everything except:
  + Copy = Shift+Ctrl+C
  + Paste = Shift+Ctrl+V
  + Full Screen = Shift+Ctrl+F11
  + Hide and Show menubar = Shift+Ctrl+F12
  + Zoom In = Ctrl++
  + Zoom Out = Ctrl+\_

### Update Keyboard Shortcuts
+ Goto Menu -> Keyboard Shortcuts.
+ Disable pretty much everything from 'Desktop' down by clicking an item
  and then entering <backspace> when asked to rebind the shortcut.
+ Set the following predefined shorcuts:
  + Lock Screen = Ctrl+Alt+L
  + Take a screenshot = Print
  + Run a terminal Ctrl+Alt+T
  + Move between windows, using a popup window = Alt+Tab
  + Switch to workspace left of the current workspace = Ctrl+Alt+Left
  + Switch to workspace right of the current workspace = Ctrl+Alt+Right
  + Maximize window = Mod4+Up
  + Tile window to east (right) side of screen = Mod4+Right
  + .................... (left) side of screen = Mod4+Left
  + ................ (top left) side of screen = Ctrl+Mod4+Up
  + ............... (top right) side of screen = Alt+Mod4+Up
  + ............. (bottom left) side of screen = Ctrl+Mod4+Down
  + ............ (bottom right) side of screen = Alt+Mod4+Down
  + Move window one workspace to the left = Shift+Ctrl+Alt+Left
  + Move window one workspace to the right = Shift+Ctrl+Alt+Right

### Change Caps Lock to Escape (MATE DE)
+ Goto Menu -> Keyboard -> Layouts.
+ Select 'English (US)' and click 'Options...'.
+ From the popup menu goto 'Caps Lock Behavior' and select 'Make Caps Lock an
  additional Esc'.

### Uninstall Default Bloat
```sh
$ apt-get -y purge plank
```
