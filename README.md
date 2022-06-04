# A list of configs for my devices

## Terminal
- install fish and starship
- install Alacritty
- change Alacritty font size to 14, paddings to 4, dynamic_padding to true
- change shell: `chsh -s /usr/local/bin/fish`

### Fish shell configs

```fish
echo "# !/usr/bin/env fish 
starship init fish | source" > $HOME/.config/fish/config.fish

abbr -a s sudo
abbr -a u sudo pacman -Syu
abbr -a m micro
abbr -a r ranger

set -U fish_greeting
set -Ux EDITOR micro

alias -s df "df -h"
alias -s free "free -h"
```
Change shell: `chsh -s $(which fish)`

### Git
```bash
git config --global user.name "shalva97"
git config --global user.email "shalva258@gmail.com"
```

### Env variables
```fish
fish_add_path /path-to-android-sdk/platform-tools/ # for adb command
set -Ux ANDROID_HOME /Users/george/Library/Android/sdk # for android sdk
```
## GUI apps

### Browser
Enable DoH via next dns

Install uBlock, Sponsorblock, I dont care about cookies

### Opera

log in to Opera Sync

disable offer to save passwords

Dont allow sites to send notifications

problems
- Disable auto play of gifs and videos
- laggy UI


## Arch Linux

### Packages to install

```bash
sudo pacman -Syu ranger micro starship git base-devel fish openssh
```

### For server
```bash
sudo pacman -S qbittorrent-nox
```

### Time
```bash
sudo systemctl enable ntpd
sudo systemctl start ntpd
hwclock --systohc # Also need to sync hardware clock
```
### top config

**z** - enable colors
**1** - show cores
**B** - make it all bold
**t** - toggle cpu stats
**m** - toggle memory stats
**h** - help
**Shift + w** - save config

### Youtube
```bash
yt-dlp "https://www.youtube.com/playlist?list=PLrnPJCHvNZuAIbejjZA1kGfLeA8ZpICB2"
yt-dlp "https://www.youtube.com/watch?v=H_oGi8uuDpA"
yt-dlp -x --audio-format mp3 --audio-quality 320K video-url # for car radio
```

## Windows
registry changes for your peace of brain and OCD

### Winget
Download from theur repo https://github.com/microsoft/winget-cli/releases

Enable script executions `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned`

set `ANDROID_SDK_ROOT` env to the /sdk path

### Windows 10
[remove password on login](https://www.businessinsider.com/how-to-turn-off-password-on-windows-10)

### Reinstalling Windiws
- Install Opera or Firefox and then required addons
- Log into Opera account to sync
- open all tabs for Personal workspace
- download setup scripts from github as .zip and run them
- reboot and thats it...

### For neighbors
from ninite.com
- qBittorrent ( for downloading activator )
- Firefox
- Chrome
- WinRar ( for activator also)

prefer saving ISO file + activator files, this could prevent installing 2 programs. set keyboard layout from my repo (currently it does not add rus keeb). activate windows with HWID activation

## MacOS
**Scroll fix** https://github.com/ther0n/UnnaturalScrollWheels

https://rectangleapp.com - Almost Windows Fancy Zone alternative (provides shortcut for maximizing apps)

change lagunge with Alt + Space

set cmd+v to paste without style

Disable alert sounds
- settings → sounds → Sounds Effects → lower the volume all the way down

`defaults write com.apple.dock no-bouncing -bool TRUE`

### Problems to fix
faster key repeat rate

Simplify shutdown ( even faster way than `shutdown -s now` )

Bluetooth Headphones do not disconnect when Mac is put to sleep

Bluetooth Headphones reconnect when laptop is in the bag, closed

Mouse scroll wheel does not work well without other apps ( with UnnaturalScrollWheels Figma's zoom zooms too much on a single scroll )

Shutdown requires too many extra clicks

Opening same program shows as single icon and is not easy to switch

no easy way to directly close window or app. Also close button is hard to click

no way to show program names while switching to them

granting permissions to apps is not that much of nice UX
