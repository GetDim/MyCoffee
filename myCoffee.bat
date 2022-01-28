@echo off
SET MYFILE="myCoffee.html"
IF EXIST %MYFILE% DEL /F %MYFILE%

powershell.exe -ExecutionPolicy Bypass -File myCoffee.ps1
echo Your Coffee is Ready :-)
echo Your Coffee is Ready :-)
echo Your Coffee is Ready :-)
exit