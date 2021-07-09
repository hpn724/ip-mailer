Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "D:\dev\ip\ext_ip1.bat" & Chr(34), 0
Set WshShell = Nothing
command = "powershell.exe -nologo -command D:\dev\ip\ext_ip2.ps1"
set shell = CreateObject("WScript.Shell")
shell.Run command,0