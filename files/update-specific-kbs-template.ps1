$KBArticleID = {{ kblist }} 
Get-WUInstall -KBArticleID $KBArticleID -IgnoreReboot -AcceptAll -WarningAction Ignore -Verbose | Out-File {{ destination }}/{{task_name}}.log;


