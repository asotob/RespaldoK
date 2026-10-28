@echo off
echo PowerShell telnet
rem by Alonso A. Villalobos
set /p IP=Please enter the IP Address (x.x.x.x)?...
set /p Pt=Please enter the Port (xxxx)?...
      powershell -windowstyle normal -command Test-NetConnection -ComputerName %IP% -Port %Pt%
pause