# Detect USB drive insertion / removal
# muonato/usbd @ GitHub (10-FEB-2023)
#
# Powershell snippet to notify the user with popup message (msg.exe) on USB drive
# insertion and removal. Message should be included in a file called 'notice.txt'
# 
# Examples:
# 		'powershell.exe -windowstyle hidden -file detect-usb.ps1' to hide
# 		'Unregister-Event -SourceIdentifier USBDrive' to halt event mgmt after use
#
# Article:
#     https://stackoverflow.com/questions/21805166/start-powershell-script-when-usb-drive-is-inserted

$Action = { Invoke-Expression "& type .\notice.txt|msg.exe *"; };
Register-WmiEvent -Class win32_VolumeChangeEvent -Action $Action -SourceIdentifier USBDrive;
$newEvent = Wait-Event -SourceIdentifier USBDrive;
