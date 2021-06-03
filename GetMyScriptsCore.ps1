# GetMyScriptsCore.ps1
Function Get-MyScript { Param( [string]$AFile,[switch]$EditFile = $False, 
							   [string]$SPath = "$env:USERPROFILE\Downloads\")
			Invoke-Webrequest -Uri "https://raw.githubusercontent.com/LucDorpmans/TestRepo/main/$AFile"  -Outfile "$SPath$AFile" 
			If ($EditFile) { Notepad  ("$SPath$AFile" )} }
		
Get-MyScript "EdgeMSI-DownloadComplete.ps1"
Get-MyScript "Edge-InstallOnly.ps1"
Get-MyScript "PowerShell-Core-Download+Install.ps1" 
Get-MyScript "WAC-Download+Install.ps1"
Get-MyScript "Chrome-Download+Run-Installer.ps1"
