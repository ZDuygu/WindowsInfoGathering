$getSystemInfo = Get-CimInstance Win32_OperatingSystem | Select-Object  Caption, InstallDate, ServicePackMajorVersion, OSArchitecture, BootDevice,  BuildNumber, CSName | FL
$name = $env:UserName
$domain = $env:UserDomain
$userInfo = net accounts
$group = net localgroup 
$getNetstat = netstat -n

"Syetem Info:" > 'text.txt'
$getSystemInfo >> 'text.txt'
"User Name: " + $name >> 'text.txt'
"User Info: " >> 'text.txt'
$userInfo >> 'text.txt'
"Domain Name"+ $domain >> 'text.txt'
"User Groups" >> 'text.txt'
$group >> 'text.txt'
"Netstat Output" >> 'text.txt'
$getNetstat >> 'text.txt'