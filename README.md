System Setup and Configuration
==============================

## Ubuntu MATE 22.04 / Linux Mint DE4(ish)
This is the process for Ubuntu MATE, but the Cinnamon desktop is close enough
to MATE that the process for LMDE4 is almost the same.

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
+ Set the following predefined shortcuts:
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

### Fix Chrome Using Dark Mode Setting Pulled from Desktop Appearance
```sh
gsettings set org.gnome.desktop.interface color-scheme prefer-light
```

### Uninstall Default Bloat
```sh
$ apt-get -y purge plank
```

## Manjaro MATE
+ System->Preferences->Hardware->Keyboard Shortcuts->Run a terminal->Ctrl+Alt+T
+ System->Preferences->Hardware->Keyboard Shortcuts->Tile window to east (right) side of screen->Shift+Alt+Right # Mod4+Key does not seem to be supported?
+ System->Preferences->Hardware->Keyboard Shortcuts->Tile window to west (left) side of screen->Shift+Alt+Left   # Mod4+Key does not seem to be supported?
+ System->Preferences->Hardware->Keyboard Shortcuts->Maximize Window->Alt+Up
+ System->Preferences->Hardware->Keyboard Shortcuts->Minimize Window->Alt+Down
+ System->Preferences->Hardware->Mouse Preferences->Mouse->General->Uncheck Enable middlemouse paste
+ System->Preferences->Hardware->Mouse Preferences->Mouse->Pointer Speed->Acceleration->Slowest
+ System->Preferences->Hardware->Mouse Preferences->Mouse->Pointer Speed->Sensitivity->Slowest
+ System->Preferences->Hardware->Mouse Preferences->Mouse->Pointer Speed->Acceleration Profile->Flat
+ System->Preferences->Hardware->Mouse Preferences->Touchpad->Pointer Speed->Acceleration->Slowest
+ System->Preferences->Hardware->Mouse Preferences->Touchpad->Pointer Speed->Sensitivity->Slowest
+ System->Preferences->Hardware->Mouse Preferences->Touchpad->Two Finger Click Emulation->Right button
+ System->Preferences->Hardware->Power Management->On AC Power->Display->Put display to sleep when inactive for->Never
+ System->Preferences->Hardware->Power Management->On Battery Power->Display->Put display to sleep when inactive for->Never
+ System->Preferences->Hardware->Power Management->On Battery Power->Display->Uncheck Reduce backlight brightness
+ System->Preferences->Hardware->Power Management->On Battery Power->Display->Uncheck Dim display when idle
+ System->Preferences->Hardware->Power Management->General->Notification Area->Always display an icon
+ System->Preferences->Look and Feel->Appearance->Interface->File Chooser->Show hidden items # Not sure if this one actually changes anything.
+ System->Preferences->Look and Feel->Appearance->Screensaver->Uncheck Activate screensaver when computer is idle
+ System->Preferences->Look and Feel->Popup Notifications->Theme->Standard Theme
+ System->Preferences->Look and Feel->Screensaver->Background picture for lock screen->/usr/share/wallpapers/manjaro-arm/generic/manjaro-bamboo-at-night.png

+ Terminal->Edit->Keyboard Shortcuts->Terminal->Set Title->Shift+Ctrl+Alt+T
+ Terminal->Edit->Keyboard Shortcuts->View->Hide and Show menubar->Shift+Ctrl+F12
+ Terminal->Edit->Keyboard Shortcuts->View->Zoom In->Ctrl++
+ Terminal->Edit->Keyboard Shortcuts->View->Zoom Out->Ctrl+_
+ Terminal->Edit->Profile Preferences->General->Font->Monospace Regular (size 14)
+ Terminal->Edit->Profile Preferences->General->Uncheck Show menubar by default in new terminals
+ Terminal->Edit->Profile Preferences->General->Uncheck terminal bell
+ Terminal->Edit->Profile Preferences->Colors->Foreground, Background, Bold, and Underline->Uncheck Use colors from system theme
+ Terminal->Edit->Profile Preferences->Colors->Foreground, Background, Bold, and Underline->Built-in schemes->Solarized dark
+ Terminal->Edit->Profile Preferences->Scrolling->Scrollbar is->Disabled
+ Terminal->Edit->Profile Preferences->Scrolling->Scrollback->Unlimited

For some reason, lightdm does not want to log into the MATE session after boot.
Apparently it might be a bug between lightdm and recent versions of X?
You will have to manually start your MATE session.
```
# During Setup
$ cp .xinitrc-mate ~/.xinitrc

# On login
$ startx
```

Before I got into my MATE session I ran:
```sh
$ sudo pacman -Syu mate mate-extra
```
but I don't know if that was necessary or not.
There is [wiki section](https://wiki.archlinux.org/title/LightDM#Infinite_login_loop)
that I thought would help, but it did not seem to be of much use.

It doesn't appear as if the "Caps Lock Behavior" setting is present, so I had
to add ~/bin/init-xmodmap as a startup program in my .xinitrc.
