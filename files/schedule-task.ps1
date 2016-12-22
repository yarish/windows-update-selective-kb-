$settime = New-TimeSpan -Minutes 2 ;
$newtime = (get-date) + $settime ;
$ST = ($newtime).ToString("HH:mm") ;
#$SD = ($newtime).ToShortDateString() ;
$SD = get-date -uformat "%m/%d/%Y" 

schtasks.exe /create /TN "ansible-12-21-16-time-23-40-task" /TR 'c:\windows\system32\WindowsPowerShell\v1.0\powershell.exe -Executionpolicy bypass -file "C:/Users/Administrator/Documents/Ansible/update-specific-kbs.ps1"' /sc 'Once' /ST $ST /SD $SD

