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

# Import Registry files in '.\REG' folder
foreach ($reg in (Get-ChildItem -Path ".\REG\*" -Include @("*.reg")).FullName) {
    reg.exe import $reg
}
