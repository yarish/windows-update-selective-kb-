$settime = New-TimeSpan -Minutes {{ plus_duration }} ;
$newtime = (get-date) + $settime ;
$ST = ($newtime).ToString("HH:mm") ;
#$SD = ($newtime).ToShortDateString() ;
$SD = get-date -uformat "%m/%d/%Y" 

schtasks.exe /create /TN "{{task_name}}" /TR '{{powershell}} -Executionpolicy bypass -file "{{executable}}"' /sc 'Once' /ST $ST /SD $SD

