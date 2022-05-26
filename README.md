# A list of configs for my devices

## Terminal
- install fish and starship
- install Alacritty
- change Alacritty font size to 14
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

### Git
```bash
git config --global user.name "shalva97"
git config --global user.email "shalva258@gmail.com"
```

### Env variables
```fish
fish_add_path /path-to-android-sdk/platform-tools/ # for adb command
```

## Arch Linux

### Packages to install

```bash
sudo pacman -Syu ranger micro starship git exa base-devel
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
