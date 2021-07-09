$mail = Read-Host -Prompt 'Input your email id'
$fileContent = Get-Content "D:\dev\ip\ext_ip2.ps1"
$fileContent[13] += '$cc='+'"'+"$mail"+'"'
$fileContent[22] += '$message.cc.add($cc)'
$fileContent | Set-Content "D:\dev\ip\ext_ip2.ps1"
