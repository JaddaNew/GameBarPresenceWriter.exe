@echo off
@color b
title -
takeown /f "%WinDir%\System32\GameBarPresenceWriter.exe" /a
icacls "%WinDir%\System32\GameBarPresenceWriter.exe" /grant:r Administrators:F /c
TASKKILL /t /f /im GameBarPresenceWriter.exe > NUL 2>&1 
del "%WinDir%\System32\GameBarPresenceWriter.exe" /s /f /q > NUL 2>&1
cls
timeout /t 3 > nul
exit