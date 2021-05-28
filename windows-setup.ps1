# Desktop
choco install -y obsidian
choco install -y steam-client
choco install -y bitwarden

# Development
choco install -y openjdk11
choco install -y python3
choco install -y firacodenf
choco install -y git
choco install -y vscode
choco install -y kdeconnect-kde
choco install -y mitmproxy

# timezone
tzutil /s "Georgian Standard Time"

# Import Registry files in '.\reg' folder
foreach ($reg in (Get-ChildItem -Path ".\reg\*" -Include @("*.reg")).FullName) {
    reg.exe import $reg
}
