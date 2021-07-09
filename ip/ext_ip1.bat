@echo off
Set LogFile="d:\dev\ip\ext_ip.txt"
for /f "tokens=2 delims=: " %%A in (
  'nslookup myip.opendns.com. resolver1.opendns.com 2^>NUL^|find "Address:"'
) Do set ExtIP=%%A
(
    echo %ExtIP%
)>"%LogFile%"
Timeout /T 5 /NoBreak>nul