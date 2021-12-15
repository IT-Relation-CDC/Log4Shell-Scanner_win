
$dir = "'$PSScriptRoot'"
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
  # Relaunch as an elevated process:
  Start-Process powershell.exe " -Command",('"cd "{0}";Write-host "Running... This window will close when done"; & ".\files\velociraptor-v0.6.2-1-windows-386.exe" "artifacts --definitions=.\artifacts collect Custom.Generic.Detection.Log4jRCE_JndiLookup --output=.\log4j_SEE_YOUR_RESULTS_HERE.zip --format=csv";exit"' -f $dir) -Verb RunAs
  exit
}
