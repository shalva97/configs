
if (-Not (Test-Path $env:ANDROID_SDK_ROOT)) {
    Write-Output "Please set ANDROID_SDK_ROOT env variable"
    pause
    exit
}

$tools = $env:ANDROID_SDK_ROOT + "\tools\bin"
$env:Path += ";" + $tools

sdkmanager --install "system-images;android-30;default;x86"
sdkmanager --install "system-images;android-24;default;x86"
sdkmanager --install "system-images;android-27;default;x86"

avdmanager create avd -n "API-24_Nougat_7.0_x86" -k "system-images;android-24;google_apis_playstore;x86" -d 8
avdmanager create avd -n "API-27_Oreo_8.1.0_x86" -k "system-images;android-27;google_apis_playstore;x86" -d 8
avdmanager create avd -n "API-30_Android11_11_x86" -k "system-images;android-30;google_apis_playstore;x86" -d 8

# todo somehow set hw.keyboard=yes to enables keys from your laptop to be sent to the emulator
# todo echo no | sdkmanager --install 'system-images;android-29;google_apis;x86_64'