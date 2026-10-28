@echo off
rem by Alonso A. Villalobos
powershell -windowstyle normal -command Test-NetConnection -ComputerName %1 -Port %2