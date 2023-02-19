# usbd
Send Win10 pop-up msg on USB drive insertion

Powershell snippet to notify the user with popup message (msg.exe) on USB drive
insertion and removal. Message should be included in a file called 'notice.txt'

Examples:´´´
    'powershell.exe -windowstyle hidden -file detect-usb.ps1' to hide
     'Unregister-Event -SourceIdentifier USBDrive' to halt event mgmt after use
´´´
Reference:
    https://stackoverflow.com/questions/21805166/start-powershell-script-when-usb-drive-is-inserted
