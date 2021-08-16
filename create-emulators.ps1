
if (-Not (Test-Path $env:ANDROID_SDK_ROOT)) {
    Write-Output "Please set ANDROID_SDK_ROOT env variable"
    pause
    exit
}

$tools = $env:ANDROID_SDK_ROOT + "\tools\bin"
$env:Path += ";" + $tools

# list available combinations:
#     sdkmanager.bat --list
sdkmanager --install "system-images;android-24;google_apis;x86_64"
sdkmanager --install "system-images;android-28;google_apis_playstore;x86_64"
sdkmanager --install "system-images;android-30;google_apis_playstore;x86_64"

avdmanager create avd --name "API-24_Nougat_7.0_x86-64" --package "system-images;android-24;google_apis;x86_64" --device 8
avdmanager create avd --name "API-27_Pie_9.0_x86-64" --package "system-images;android-28;google_apis_playstore;x86_64" --device 8
avdmanager create avd --name "API-30_Android11_11_x86-64" --package "system-images;android-30;google_apis_playstore;x86_64" --device 8

# todo somehow set hw.keyboard=yes to enables keys from your laptop to be sent to the emulator