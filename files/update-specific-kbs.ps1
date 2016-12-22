$KBArticleID = 'KB3184943','KB3205401' 
Get-WUInstall -KBArticleID $KBArticleID -IgnoreReboot -AcceptAll -WarningAction Ignore -Verbose | Out-File C:/Users/Administrator/Documents/Ansible/ansible-12-21-16-time-23-40-task.log;


