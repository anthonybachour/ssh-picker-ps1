# What is this #
SSH-PICKER is a basic SSH host picker.
Use it with a Windows Terminal shortcut to SSH into any server defined in you SSH config file.

# How to use it #

## SSH Profile
The script reads your ssh hosts from your ~/.ssh/config file

Example entry:
```
Host ssh-name
    HostName 127.0.0.1
    User ssh-user
    Port 22
    IdentityFile ~/.ssh/key.pem
```

## Creating a Windows Terminal shortcut
- Clone the repository
- In Windows Terminal / PowerShell run the following command: [guid]::NewGuid()
- In Windows Terminal settings (Hit the down arrow in the WT menu and click on settings)
    - Replace GUID and location with the guid generated earlier and the location of the script

```javascript
{
    "guid": "{GUID}",
    "name": "SSH PICKER",
    "commandline": "powershell.exe -NoExit -Command ~/location/ssh-picker.ps1",
    "hidden": false
},
```
- When you hit CTRL + SHIFT + 1 (replace 1 with the location of your shortcut object in the list) you should be prompted to choose an SSH host