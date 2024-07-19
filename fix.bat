@echo off
setlocal

del /f /q "C:\Windows\System32\drivers\CrowdStrike\C-00000291*.sys"

if %errorlevel% neq 0 (
    echo Failed to delete the SYS.
    goto end
)

shutdown /r /t 0

:end
endlocal
