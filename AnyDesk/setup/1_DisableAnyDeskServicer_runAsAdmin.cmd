@echo off

net session >nul 2>&1
if %errorLevel% == 0 goto next

echo "Please run as admin!"
pause
exit 0

:next

sc config "AnyDesk" start= demand
sc stop "AnyDesk"
pause