@echo off

:: Specify the full path to the Stream Dock AJAZZ.exe
:: Example: set "APP_PATH=D:\Ajazz\Stream Dock AJAZZ.exe"
set "APP_PATH="


:: VALIDATION
if "%APP_PATH%"=="" (
    echo [ERROR] Open this file and specify the application path ath APP_PATH=
    pause
    exit /b
)

if not exist "%APP_PATH%" (
    echo [ERROR] File not found: %APP_PATH%
    pause
    exit /b
)

:: Replace YOUR TASK NAME with any name you want for the task
schtasks /create /tn "YOUR TASK NAME" /tr "%APP_PATH%" /sc onlogon /rl highest /f

echo [SUCCESS] The Ajazz will start at logon without SystemMonitor.exe popup (UAC)

:skip
pause
exit
