
if (-Not (Test-Path $env:ANDROID_SDK_ROOT)) {
    Write-Output "Please set ANDROID_SDK_ROOT env variable"
    pause
    exit
}

$tools = $env:ANDROID_SDK_ROOT + "\tools\bin"
$env:Path += ";" + $tools

$emulator1 = "system-images;android-26;google_apis;x86_64"
$emulator2 = "system-images;android-28;google_apis_playstore;x86_64"
$emulator3 = "system-images;android-30;google_apis_playstore;x86_64"

# list available combinations:
#     sdkmanager.bat --list
sdkmanager --install $emulator1
sdkmanager --install $emulator2
sdkmanager --install $emulator3

# android api codenames https://source.android.com/setup/start/build-numbers
avdmanager create avd --name "API-26_Oreo_8.0_x86-64" --package $emulator1 --device 8
avdmanager create avd --name "API-28_Pie_9.0_x86-64" --package $emulator2 --device 8
avdmanager create avd --name "API-30_Android11_11_x86-64" --package $emulator3 --device 8

# set hw.keyboard=yes to enables keys from your PC to be sent to the emulator
$emulators = avdmanager list avd | Select-String -Pattern "Path:"
$stringToAppend = "hw.keyboard=yes"

ForEach ($line in $($emulators -split "`r`n"))
{
    $path = $line.Trim().Split(" ")[1] + "\config.ini"

    if ((Get-Content $path | %{$_ -match $stringToAppend }) -contains $false) {
        Add-Content -Path $path -Value $stringToAppend
    }
}

pause # so you can read what happend