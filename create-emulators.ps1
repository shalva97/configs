
if (-Not (Test-Path $env:ANDROID_SDK_ROOT)) {
    Write-Output "Please set ANDROID_SDK_ROOT env variable"
    pause
    exit
}

$tools = $env:ANDROID_SDK_ROOT + "\tools\bin"
$env:Path += ";" + $tools

avdmanager create avd -n "API-24_Nougat_7.0_x86" -k "system-images;android-24;google_apis_playstore;x86" -d 8
avdmanager create avd -n "API-27_Oreo_8.1.0_x86" -k "system-images;android-27;google_apis_playstore;x86" -d 8
avdmanager create avd -n "API-30_Android11_11_x86" -k "system-images;android-30;google_apis_playstore;x86" -d 8

# todo somehow download system images