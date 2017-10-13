$domain = $env:UserDomain
$userName = $env:UserName
$userInfo = net accounts
$getSystemInfo = Get-CimInstance Win32_OperatingSystem | Select-Object  Caption, InstallDate, ServicePackMajorVersion, OSArchitecture, BootDevice,  BuildNumber, CSName | FL
$computerInfo = Get-ComputerInfo | Select-Object LogonServer, PowerPlatformRole, DeviceGuardSmartStatus, WindowsBuildLabEx, WindowsCurrentVersion, WindowsEditionId, WindowsInstallationType, WindowsInstallDateFromRegistry, WindowsProductId, WindowsProductName, WindowsSystemRoot ,WindowsVersion
$services = Get-Service
$getNetstat = netstat -n
$sheduled =  Get-ScheduledTask | Get-ScheduledTaskInfo

"#################### All Users ####################" > 'text.txt'
Get-LocalUser >> 'text.txt'
"#################### All Groups ####################" >> 'text.txt'
Get-LocalGroup >> 'text.txt'
"#################### Domain Name & User Name ####################" >> 'text.txt'
$domain >> 'text.txt'
$userName >> 'text.txt'
"#################### User Info ####################" >> 'text.txt'
$userInfo >> 'text.txt'
"#################### System Info ####################" >> 'text.txt'
$getSystemInfo >> 'text.txt'
"#################### Computer Info ####################" >> 'text.txt'
$computerInfo >> 'text.txt'
"#################### All Services ####################" >> 'text.txt'
$services >> 'text.txt'
"#################### Netstat Output ####################" >> 'text.txt'
$getNetstat >> 'text.txt'
"#################### Sheduled Tasks ####################" >> 'text.txt'
$sheduled >> 'text.txt'
