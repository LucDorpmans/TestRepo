$progressPreference='SilentlyContinue'
$MyFile = "PowerShell-7.1.3-win-x64.msi"
Invoke-Webrequest -Uri "https://github.com/PowerShell/PowerShell/releases/download/v7.1.3/PowerShell-7.1.3-win-x64.msi"  -Outfile "$env:USERPROFILE\Downloads\$MyFile"
Start-Process msiexec.exe -Wait -ArgumentList "/i $env:USERPROFILE\Downloads\$MyFile /qn /quiet"
