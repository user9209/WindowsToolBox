@echo off
taskkill /IM AnyDesk.exe /F
schtasks /run /tn AnyDeskStop
pause