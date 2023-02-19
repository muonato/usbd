# USB Drive Detect
Send Win10 pop-up message on USB drive insertion

Powershell snippet to notify the user with popup message (msg.exe) on USB drive insertion and removal. Possible use cases for company policy reminders or security notifications. Message should be included in a file called 'notice.txt'

Examples:
```
    CMD 'powershell.exe -windowstyle hidden -file detect-usb.ps1' to hide
    PS> 'Unregister-Event -SourceIdentifier USBDrive' to halt event mgmt after use
```
Reference:
    https://stackoverflow.com/questions/21805166/start-powershell-script-when-usb-drive-is-inserted
