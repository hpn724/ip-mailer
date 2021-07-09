powershell Expand-Archive -Path "ip.zip" -DestinationPath "D:\dev\ip"
timeout 3
powershell.exe Set-executionpolicy remotesigned -Scope CurrentUser
Powershell.exe -File D:\dev\ip\try.ps1
timeout 5
powershell.exe D:\dev\ip\ip_sender.vbs
timeout 3
schtasks /create /xml "D:\dev\ip\External_IP_Mailing_sysytem.xml" /tn "External IP Mailing sysytem" /ru "%COMPUTERNAME%\%USERNAME%"
