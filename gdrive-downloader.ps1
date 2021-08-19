$touchpadDriver = "https://drive.google.com/uc?export=download&id=1w4Ix1wzqrz46TwEZ-xZhXROBYmRYwHCk"
$id = "1w4Ix1wzqrz46TwEZ-xZhXROBYmRYwHCk"

$downloadLinkPrefix = "https://drive.google.com"

$response = Invoke-WebRequest -Uri $touchpadDriver

Add-Type -AssemblyName System.Web

foreach ($link in $response.Links) {
    $decodedLink = [System.Web.HttpUtility]::HtmlDecode($link.href)
    if (($decodedLink -match $id) -and ($decodedLink -match "confirm")) {
        $downloadUrl = $downloadLinkPrefix + $decodedLink
        Invoke-WebRequest -Uri $downloadUrl -OutFile "C:\Users\shalv\Downloads\driver.zip"
        Pause
        exit
    }
}
