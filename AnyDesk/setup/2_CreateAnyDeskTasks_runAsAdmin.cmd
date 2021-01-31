@echo off

net session >nul 2>&1
if %errorLevel% == 0 goto next

echo "Please run as admin!"
pause
exit 0

:next


rem /ru "SYSTEM"
SCHTASKS /CREATE /SC ONCE /TN AnyDeskStart /TR "sc start \"AnyDesk\"" /RL HIGHEST /sd 01/01/2021 /st 12:00
SCHTASKS /CREATE /SC ONCE /TN AnyDeskStop /TR "sc stop \"AnyDesk\"" /RL HIGHEST /sd 01/01/2021 /st 12:00
pause

rem schtasks /run /tn AnyDeskStart
rem schtasks /run /tn AnyDeskStop