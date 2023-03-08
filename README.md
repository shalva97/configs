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

## Arch Linux

### Packages to install

```bash
sudo pacman -Syu ranger micro starship git base-devel fish openssh
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

### Winget
Download from theur repo https://github.com/microsoft/winget-cli/releases

