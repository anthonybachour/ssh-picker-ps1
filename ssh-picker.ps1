$ssh_available = Invoke-Command -ScriptBlock {Get-Content ~/.ssh/config | Select-String "Host "}
$ssh_available = $ssh_available -replace 'Host ',''
[string[]]$ssh_available = $ssh_available.Split([Environment]::NewLine)

$counter = 0
$ssh_available | ForEach-Object {"$(($counter++))) $PSItem"}

$ssh_host = Read-Host -Prompt "SELECT YOUR HOST"

ssh $ssh_available[$ssh_host]