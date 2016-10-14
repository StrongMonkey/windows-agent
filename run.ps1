# download host-api cert
echo "Cattle url: $env:CATTLE_URL"
$url = $env:CATTLE_URL + "/scripts/api.crt"
if ( !(Test-Path "C:\Cattle\etc\cattle")) {
	New-Item C:\Cattle\etc\cattle -type directory
}
Invoke-WebRequest -Uri $url -OutFile "C:\Cattle\etc\cattle\api.crt"
if ( !(Test-Path "C:\Cattle\containers")) {
	New-Item C:\Cattle\containers -type directory
}
& "C:\agent.exe"
