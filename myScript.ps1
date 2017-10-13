$domain = $env:UserDomain
$userName = $env:UserName
$userInfo = net accounts
$getSystemInfo = Get-CimInstance Win32_OperatingSystem | Select-Object  Caption, InstallDate, ServicePackMajorVersion, OSArchitecture, BootDevice,  BuildNumber, CSName | FL
$computerInfo = Get-ComputerInfo | Select-Object LogonServer, PowerPlatformRole, DeviceGuardSmartStatus, WindowsBuildLabEx, WindowsCurrentVersion, WindowsEditionId, WindowsInstallationType, WindowsInstallDateFromRegistry, WindowsProductId, WindowsProductName, WindowsSystemRoot ,WindowsVersion
$services = Get-Service
$getNetstat = netstat -n
$sheduled =  Get-ScheduledTask | Get-ScheduledTaskInfo

"" > 'text.txt'
Get-LocalUser >> 'text.txt'
Get-LocalGroup >> 'text.txt'
$domain >> 'text.txt'
$userName >> 'text.txt'
$userInfo >> 'text.txt'
$getSystemInfo >> 'text.txt'
$computerInfo >> 'text.txt'
$services >> 'text.txt'
$getNetstat >> 'text.txt'
$sheduled >> 'text.txt'
