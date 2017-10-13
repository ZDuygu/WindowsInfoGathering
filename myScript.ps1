$getSystemInfo = Get-CimInstance Win32_OperatingSystem | Select-Object  Caption, InstallDate, ServicePackMajorVersion, OSArchitecture, BootDevice,  BuildNumber, CSName | FL
$computerInfo = Get-ComputerInfo | Select-Object LogonServer, PowerPlatformRole, DeviceGuardSmartStatus, WindowsBuildLabEx, WindowsCurrentVersion, WindowsEditionId, WindowsInstallationType, WindowsInstallDateFromRegistry, WindowsProductId, WindowsProductName, WindowsSystemRoot ,WindowsVersion
$name = $env:UserName
$domain = $env:UserDomain
$userInfo = net accounts
$allGroup = Get-LocalGroup
$allUsers = Get-LocalUser
$getNetstat = netstat -n
$sheduled =  Get-ScheduledTask | Get-ScheduledTaskInfo

"" > 'text.txt'
$getSystemInfo >> 'text.txt'
$computerInfo >> 'text.txt'
$name >> 'text.txt'
$domain >> 'text.txt'
$userInfo >> 'text.txt'
$allGroup >> 'text.txt'
$allUsers >> 'text.txt'
$getNetstat >> 'text.txt'
$sheduled >> 'text.txt'
