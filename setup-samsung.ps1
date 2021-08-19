### Desktop
# todo: install firacode
# todo: install and fix kdenlive # winget install --id KDE.Kdenlive # cannot install ffmpeg
# todo: add Flameshot to startup

# winget install steam
winget install --id bitwarden
winget install --id VideoLAN.VLC
winget install --id Flameshot.Flameshot
winget install --id KDE.KDEConnect
winget install --id Min.Min

#### Development
winget install --id Git.Git
winget install --id Microsoft.VisualStudioCode

# timezone
tzutil /s "Georgian Standard Time"

# git stuff
git config --global user.email "shalva258@gmail.com"
git config --global user.name "shalva97"

# Import Registry files in '.\reg' folder
foreach ($reg in (Get-ChildItem -Path ".\reg\*" -Include @("*.reg")).FullName) {
    reg.exe import $reg
}

# install driver for touchpad
$zipArchive = "C:\Users\shalv\Downloads\driver.zip"
$extractTo = "C:\Users\shalv\Downloads\driver"
Invoke-WebRequest -Uri "https://onedrive.live.com/download?cid=284EBE799500EA37&resid=284EBE799500EA37%21137&authkey=AB6wOXihmynU1Ic" -OutFile $zipArchive
Expand-Archive $zipArchive -DestinationPath $extractTo
$driverExecutable = $extractTo + "\Setup.exe"
Start-Process -Wait -FilePath $driverExecutable -ArgumentList "/S" -PassThru
